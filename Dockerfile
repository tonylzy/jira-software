FROM alpine:3.11.5
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG JIRA_VERSION=8.8.0
ARG JIRA_PRODUCT=jira-software

ENV LANG='en_US.UTF-8' \
    LANGUAGE='en_US:en' \
    LC_ALL='en_US.UTF-8'

RUN apk add --no-cache --virtual .build-deps curl binutils ;\
    GLIBC_VER="2.31-r0" ;\
    ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download" ;\
    GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-9.3.0-1-x86_64.pkg.tar.zst" ;\
    GCC_LIBS_SHA256="ccba6f5341008a3d693d7aeaf2423d2339a690b739b23a52dd03335acbcd94ab" ;\
    ZLIB_URL="https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.11-4-x86_64.pkg.tar.xz" ;\
    ZLIB_SHA256=43a17987d348e0b395cb6e28d2ece65fb3b5a0fe433714762780d18c0451c149 ;\
    curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub ;\
    SGERRAND_RSA_SHA256="823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2" ;\
    echo "${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub" | sha256sum -c - ;\
    curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk ;\
    apk add --no-cache /tmp/glibc-${GLIBC_VER}.apk ;\
    curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk ;\
    apk add --no-cache /tmp/glibc-bin-${GLIBC_VER}.apk ;\
    curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk ;\
    apk add --no-cache /tmp/glibc-i18n-${GLIBC_VER}.apk ;\
    /usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 "$LANG" || true ;\
    echo "export LANG=$LANG" > /etc/profile.d/locale.sh ;\
    curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.zst ;\
    echo "${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.zst" | sha256sum -c - ;\
    mkdir /tmp/gcc ;\
    tar -xf /tmp/gcc-libs.tar.zst -C /tmp/gcc ;\
    mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib ;\
    strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so* ;\
    curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.xz ;\
    echo "${ZLIB_SHA256} */tmp/libz.tar.xz" | sha256sum -c - ;\
    mkdir /tmp/libz ;\
    tar -xf /tmp/libz.tar.xz -C /tmp/libz ;\
    mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib ;\
    apk del --purge .build-deps glibc-i18n ;\
    rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar.zst /tmp/libz /tmp/libz.tar.xz /var/cache/apk/*

RUN set -eux ;\
    apk add --no-cache --virtual .fetch-deps curl ;\
    export JAVA_VERSION=jdk8u242-b08_openj9-0.18.1 ;\
    export JAVA_FILE_VERSION=8u242b08_openj9-0.18.1 ;\
    ARCH="$(apk --print-arch)" ;\
    case "${ARCH}" in \
       ppc64el|ppc64le) \
         ESUM='438cd1be6a3396d102482f6c2f77cf1146aa38ec866f7bc82739fa77cd172be0' ;\
         BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/${JAVA_VERSION}/OpenJDK8U-jre_ppc64le_linux_openj9_${JAVA_FILE_VERSION}.tar.gz' ;\
         ;; \
       s390x) \
         ESUM='9b11232cbffcd8fd243f6340ef7cc73ce37c437c66522c19e24d548a7e87b075' ;\
         BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/${JAVA_VERSION}/OpenJDK8U-jre_s390x_linux_openj9_${JAVA_FILE_VERSION}.tar.gz' ;\
         ;; \
       amd64|x86_64) \
         ESUM='985d3134b64c6196d4c9ddbc87af0c62b0e643cef71b29f3d25a8c7811811745' ;\
         BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/${JAVA_VERSION}/OpenJDK8U-jre_x64_linux_openj9_${JAVA_FILE_VERSION}.tar.gz' ;\
         ;; \
       *) \
         echo "Unsupported arch: ${ARCH}" ;\
         exit 1 ;\
         ;; \
    esac; \
    wget -O /tmp/openjdk.tar.gz https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/${JAVA_VERSION}/OpenJDK8U-jre_x64_linux_openj9_${JAVA_FILE_VERSION}.tar.gz ;\
    echo "${ESUM}  /tmp/openjdk.tar.gz" | sha256sum -c - ;\
    mkdir -p /opt/java/openjdk ;\
    cd /opt/java/openjdk ;\
    tar -xf /tmp/openjdk.tar.gz --strip-components=1 ;\
    apk del --purge .fetch-deps ;\
    rm -rf /var/cache/apk/* /tmp/openjdk.tar.gz

ENV JAVA_HOME=/opt/java/openjdk \
    PATH="/opt/java/openjdk/bin:$PATH"
ENV JAVA_TOOL_OPTIONS="-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle"

ENV JIRA_USER=jira \
    JIRA_GROUP=jira \
    CONTAINER_UID=1000 \
    CONTAINER_GID=1000 \
    JIRA_CONTEXT_PATH=ROOT \
    JIRA_HOME=/var/atlassian/jira \
    JIRA_INSTALL=/opt/jira \
    JIRA_SCRIPTS=/usr/local/share/atlassian \
    JRE_HOME=$JAVA_HOME \
    _RUNJAVA=java

COPY bin $JIRA_SCRIPTS

WORKDIR /tmp

RUN export GLIBC_VERSION=2.31-r0 ;\
    export GLIBC_DOWNLOAD_URL=https://github.com/sgerrand/alpine-pkg-glibc/releases/download/$GLIBC_VERSION ;\
    export GLIBC_BIN=glibc-bin-$GLIBC_VERSION.apk ;\
    export GLIBC_I18N=glibc-i18n-$GLIBC_VERSION.apk ;\
    wget -O $GLIBC_BIN $GLIBC_DOWNLOAD_URL/$GLIBC_BIN ;\
    wget -O $GLIBC_I18N $GLIBC_DOWNLOAD_URL/$GLIBC_I18N ;\
    apk add --no-cache \
        $GLIBC_BIN \
        $GLIBC_I18N \
        bash \
        su-exec \
        gzip \
        nano \
        tini \
        wget \
        xmlstarlet \
        fontconfig \
        msttcorefonts-installer \
        ttf-dejavu \
        ghostscript \
        graphviz \
        motif ;\
    update-ms-fonts ;\
    fc-cache -f ;\
    export JIRA_LIB=$JIRA_INSTALL/lib ;\
    mkdir -p $JIRA_HOME $JIRA_INSTALL $JIRA_LIB ;\
    addgroup -g $CONTAINER_GID $JIRA_GROUP ;\
    export MYSQL_DRIVER_VERSION=5.1.48 ;\
    export MYSQL_FILE_BASE=mysql-connector-java-$MYSQL_DRIVER_VERSION ;\
    export MYSQL_FILE_TAR=$MYSQL_FILE_BASE.tar.gz ;\
    export MYSQL_FILE_BIN=$MYSQL_FILE_BASE-bin.jar ;\
    export MYSQL_DOWNLOAD_URL=https://dev.mysql.com/get/Downloads/Connector-J/$MYSQL_FILE_TAR ;\
    export POSTGRESQL_DRIVER_VERSION=42.2.8 ;\
    export POSTGRESQL_FILE=postgresql-$POSTGRESQL_DRIVER_VERSION.jar ;\
    export POSTGRESQL_DOWNLOAD_URL=https://jdbc.postgresql.org/download/$POSTGRESQL_FILE ;\
    rm -f $JIRA_LIB/mysql-connector-java*.jar ;\
    wget -O $MYSQL_FILE_TAR $MYSQL_DOWNLOAD_URL ;\
    tar xzf $MYSQL_FILE_TAR --strip=1 ;\
    cp $MYSQL_FILE_BIN $JIRA_LIB/$MYSQL_FILE_BIN ;\
    rm -f $JIRA_LIB/postgresql-*.jar ;\
    wget -O $JIRA_LIB/$POSTGRESQL_FILE $POSTGRESQL_DOWNLOAD_URL ;\
    export DOCKERIZE_VERSION=v0.6.1 ; \
    export DOCKERIZE_DOWNLOAD_URL=https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz ;\
    wget -O dockerize.tar.gz $DOCKERIZE_DOWNLOAD_URL ;\
    tar -C /usr/local/bin -xzvf dockerize.tar.gz ;\
    rm dockerize.tar.gz ;\
    export LE_DOWNLOAD_URL=https://letsencrypt.org/certs/ ;\
    export LE_AUTH_1=letsencryptauthorityx1.der ;\
    export LE_AUTH_2=letsencryptauthorityx2.der ;\
    export LE_CROSS_1=lets-encrypt-x1-cross-signed.der ;\
    export LE_CROSS_2=lets-encrypt-x2-cross-signed.der ;\
    export LE_CROSS_3=lets-encrypt-x3-cross-signed.der ;\
    export LE_CROSS_4=lets-encrypt-x4-cross-signed.der ;\
    export KEYSTORE=$JRE_HOME/lib/security/cacerts ;\
    wget $LE_DOWNLOAD_URL/$LE_AUTH_1 ;\
    wget $LE_DOWNLOAD_URL/$LE_AUTH_2 ;\
    wget $LE_DOWNLOAD_URL/$LE_CROSS_1 ;\
    wget $LE_DOWNLOAD_URL/$LE_CROSS_2 ;\
    wget $LE_DOWNLOAD_URL/$LE_CROSS_3 ;\
    wget $LE_DOWNLOAD_URL/$LE_CROSS_4 ;\
    keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias isrgrootx1 -file $LE_AUTH_1 ;\
    keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias isrgrootx2 -file $LE_AUTH_2 ;\
    keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias letsencryptauthorityx1 -file $LE_CROSS_1 ;\
    keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias letsencryptauthorityx2 -file $LE_CROSS_2 ;\
    keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias letsencryptauthorityx3 -file $LE_CROSS_3 ;\
    keytool -trustcacerts -keystore $KEYSTORE -storepass changeit -noprompt -importcert -alias letsencryptauthorityx4 -file $LE_CROSS_4 ;\
    apk del --no-cache msttcorefonts-installer ;\
    rm -rf /var/cache/apk/* /tmp/* /var/log/*

ARG LANG_LANGUAGE=en
ARG LANG_COUNTRY=US

RUN /usr/glibc-compat/bin/localedef -i ${LANG_LANGUAGE}_${LANG_COUNTRY} -f UTF-8 ${LANG_LANGUAGE}_${LANG_COUNTRY}.UTF-8

RUN wget -O jira.bin https://www.atlassian.com/software/jira/downloads/binary/atlassian-$JIRA_PRODUCT-$JIRA_VERSION-x64.bin ;\
    chmod +x jira.bin ;\
    export JAVA_TOOL_OPTIONS="" ;\
    ./jira.bin -q -varfile $JIRA_SCRIPTS/response.varfile ;\
    rm -rf $JIRA_INSTALL/jre ;\
    ln -s $JAVA_HOME $JIRA_INSTALL/jre ;\
    adduser -u $CONTAINER_UID -G $JIRA_GROUP -h /home/$JIRA_USER -s /bin/bash -S $JIRA_USER ;\
    wget -O /home/$JIRA_USER/SSLPoke.class https://confluence.atlassian.com/kb/files/779355358/779355357/1/1441897666313/SSLPoke.class ;\
    chown -R $JIRA_USER:$JIRA_GROUP $JIRA_HOME $JIRA_INSTALL $JIRA_SCRIPTS /home/$JIRA_USER ;\
    rm -rf /var/cache/apk/* /tmp/* /var/log/*

USER $JIRA_USER

WORKDIR $JIRA_HOME

VOLUME ["$JIRA_HOME"]

EXPOSE 8080

ENTRYPOINT ["/sbin/tini","--","/usr/local/share/atlassian/docker-entrypoint.sh"]

CMD ["jira"]
