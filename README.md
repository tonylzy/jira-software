# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~759MB)

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.8.1-alpine-3.11.6
2020/04/25 12:53:45 [INFO] ▶ Start clair-scanner
2020/04/25 12:53:57 [INFO] ▶ Server listening on port 9279
2020/04/25 12:53:57 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 12:53:57 [INFO] ▶ Analyzing 681590a76c60ab1c11a2bd6ba11aa3d00428cd5a4ed164bf69fa8d0feefa5915
2020/04/25 12:53:59 [INFO] ▶ Analyzing 3ae36756073e6174092169df76c9064abf53d0c3f7c36e58a0a57d2814c0715a
2020/04/25 12:53:59 [INFO] ▶ Analyzing 3581ba5eb0926320498d96489ba0eb4cb8faaea4f5b4d67fe90f1589996b8632
2020/04/25 12:53:59 [INFO] ▶ Analyzing b09b02e1a0ed20e782e1d57b15247582f9dfe522e207a663dc327d00a53b6b58
2020/04/25 12:54:01 [INFO] ▶ Analyzing 0cfc5c3eca04756b364521045236f8205627624b2a1844fb8c4ccd853da8d0b5
2020/04/25 12:54:01 [INFO] ▶ Analyzing 0c786a5af9895a228fa7e63076657f0d4f2cabaf0922894a90e4b4714956a248
2020/04/25 12:54:01 [INFO] ▶ Image [secureimages/jira-software:8.8.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/jira-software:8.8.1-alpine-3.11.6
2020-04-25T09:54:04.177Z        INFO    Need to update DB
2020-04-25T09:54:04.177Z        INFO    Downloading DB...
2020-04-25T09:54:25.576Z        INFO    Detecting Alpine vulnerabilities...

secureimages/jira-software:8.8.1-alpine-3.11.6 (alpine 3.11.6)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~772MB)

[https://hub.docker.com/r/atlassian/jira-software](https://hub.docker.com/r/atlassian/jira-software)
```
docker pull atlassian/jira-software:8.8.1
```

Security scanning using Clair
```
clair-scanner atlassian/jira-software:8.8.1
2020/04/25 12:54:38 [INFO] ▶ Start clair-scanner
2020/04/25 12:54:53 [INFO] ▶ Server listening on port 9279
2020/04/25 12:54:53 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/25 12:54:53 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/25 12:54:53 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/25 12:54:53 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/25 12:54:53 [INFO] ▶ Analyzing f612b4817c8b3bdbf2c41a8767ca2721bd4d6569e1ab82171d581609be115675
2020/04/25 12:54:53 [INFO] ▶ Analyzing 52654f1ff1d6ff7da8cb5b56ec116fde18859ab0e74d56cd11d394f85f24e1a5
2020/04/25 12:54:53 [INFO] ▶ Analyzing 0abd897e7e7c85addc9e7eb59e259debe1320576938e603684312346626fb918
2020/04/25 12:54:53 [INFO] ▶ Analyzing df3e2776244cffb26daa7c79a89ec6b7cc0e6700ef4c022872d3c1f909739480
2020/04/25 12:54:53 [INFO] ▶ Analyzing 7544830e3a0f04cf6ed3ed4c5479c5aa55c60fac7f266cc6b7c8eb5a37bc9364
2020/04/25 12:54:53 [INFO] ▶ Analyzing 5be5725632d58e702feaa6716470b3cdab6ea98c831c17d1381b835d54d6d13b
2020/04/25 12:54:53 [INFO] ▶ Analyzing ae7915e3568376094fc06f4105deaa4b0cb8b50e71acbfd848d3f31a8b9c5204
2020/04/25 12:54:53 [INFO] ▶ Analyzing 17df515da1afbbbd67f016f66422092b481b91a0eaad41e815b2b3619c12926d
2020/04/25 12:54:53 [INFO] ▶ Analyzing 8d957ab0e20b6427a882ff7506f29bbbb94ba47b1fd8b1218c41df7bf786886d
2020/04/25 12:54:53 [INFO] ▶ Analyzing 778fe4336a541fbadef10200f9dde666d74685157626e932310badaf774d779c
2020/04/25 12:54:53 [WARN] ▶ Image [atlassian/jira-software:8.8.1] contains 48 total vulnerabilities
2020/04/25 12:54:53 [ERRO] ▶ Image [atlassian/jira-software:8.8.1] contains 48 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress atlassian/jira-software:8.8.1
2020-04-25T09:54:56.408Z        INFO    Need to update DB
2020-04-25T09:54:56.408Z        INFO    Downloading DB...
2020-04-25T09:55:14.865Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.8.1 (ubuntu 18.04)
============================================
Total: 111 (UNKNOWN: 0, LOW: 22, MEDIUM: 67, HIGH: 22, CRITICAL: 0)
```
