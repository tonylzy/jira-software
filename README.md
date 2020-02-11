# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.7.1-alpine-3.11.3
2020/02/11 10:53:06 [INFO] ▶ Start clair-scanner
2020/02/11 10:53:16 [INFO] ▶ Server listening on port 9279
2020/02/11 10:53:16 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/11 10:53:16 [INFO] ▶ Analyzing debe5551676ff7008c5e70e3666dff8f76a6dc2c5c42d4d1827aea7b193bac98
2020/02/11 10:53:17 [INFO] ▶ Analyzing 0a22def275ae3b076b15a2e34df75e4755653165b2765f9f68cda9bb7aeb12f6
2020/02/11 10:53:17 [INFO] ▶ Analyzing 8b94d547a5d27a273cc69bdb739dcbdd00319188ce9babb50a2bdf784e8a0992
2020/02/11 10:53:17 [INFO] ▶ Analyzing bfd9e6250384ae75d468128da793a6e18eb4284aa80c574e878d8b8f93fddfab
2020/02/11 10:53:18 [INFO] ▶ Analyzing 8ae84b7d3d4dfdfd1dd4022b8cb1f8307f175a7bd22e64b2bc33acf4ea2be325
2020/02/11 10:53:18 [INFO] ▶ Analyzing 4b5bac7f9b14b1e36e90695555afa52038eb9d8b94397e0922d1bb8124d9813d
2020/02/11 10:53:18 [INFO] ▶ Image [secureimages/jira-software:8.7.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/jira-software:8.7.1-alpine-3.11.3
2020-02-11T08:53:21.496Z        INFO    Need to update DB
2020-02-11T08:53:21.496Z        INFO    Downloading DB...
2020-02-11T08:53:25.465Z        INFO    Reopening DB...
2020-02-11T08:53:36.341Z        INFO    Detecting Alpine vulnerabilities...

secureimages/jira-software:8.7.1-alpine-3.11.3 (alpine 3.11.3)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/jira-software](https://hub.docker.com/r/atlassian/jira-software)
```
docker pull atlassian/jira-software:8.7.1
```

Security scanning using Clair
```
clair-scanner atlassian/jira-software:8.7.1
2020/02/11 10:53:46 [INFO] ▶ Start clair-scanner
2020/02/11 10:53:59 [INFO] ▶ Server listening on port 9279
2020/02/11 10:53:59 [INFO] ▶ Analyzing 0a83f61838ece143b24a4555f0b9ee1cd45e1a9f4af16a5b2f714868b4ae6546
2020/02/11 10:53:59 [INFO] ▶ Analyzing 076ba28069d5d2c1520533138630ca87b29cb86ea460ab08a39df8b77d5425a0
2020/02/11 10:53:59 [INFO] ▶ Analyzing 70e53499a05a2ed55f7e0e8750870f3c5b2cd1fd5c5583086a1ba4dc9f3e5915
2020/02/11 10:53:59 [INFO] ▶ Analyzing a1a84f0f6a99a7d15e5b85e6d3df412ce94227aaee11a373667e9edad23f5646
2020/02/11 10:53:59 [INFO] ▶ Analyzing 3f3625cc18ad8ffa8c25f307ff6997add53b76101fb71b226e43dcc9f3cc6e15
2020/02/11 10:53:59 [INFO] ▶ Analyzing cd341d9de287c0639fb341f3760cbe0e74eb2af4e2044592ef3f56ff4e9aa3a4
2020/02/11 10:53:59 [INFO] ▶ Analyzing da7db703b7127825bea42804e7d4e8598547d3141c69b5afd8470052febc736a
2020/02/11 10:53:59 [INFO] ▶ Analyzing 38d6ecd3ba45f272ce6e313418379c9910f9f9bfda26a6ae1dadf4f33905c78e
2020/02/11 10:53:59 [INFO] ▶ Analyzing f7be1ee5d32fdc75d7f344b117d9ca6bf25e9d207e9bd4be0eed340545f8b325
2020/02/11 10:53:59 [INFO] ▶ Analyzing b60a52db46aad2185f0c3e3e63dd4a4a0e53426448f8ca2163843124fb1ea37f
2020/02/11 10:53:59 [INFO] ▶ Analyzing 1ea48739052f77ecd21d1da842cf9d6a70059118ff920f1b5b30974bd1d75d35
2020/02/11 10:53:59 [INFO] ▶ Analyzing 9c628675e727da52c123e75a0454ddf73b01b53811bd421456d1db4c80b8db56
2020/02/11 10:54:00 [INFO] ▶ Analyzing 5aa774b0e7372e7da21a95430b25f631fe785f1edb0811a208eeb9ea6e08301e
2020/02/11 10:54:00 [INFO] ▶ Analyzing 178c8b3aa290b8e87eb503a80acaba4560141050b19cfe917c6e159fbc54dd22
2020/02/11 10:54:00 [INFO] ▶ Analyzing a681747810798dfc25aeb61f53128e820aa6cd0cc5c66440937d4153ef17901d
2020/02/11 10:54:00 [WARN] ▶ Image [atlassian/jira-software:8.7.1] contains 43 total vulnerabilities
2020/02/11 10:54:00 [ERRO] ▶ Image [atlassian/jira-software:8.7.1] contains 43 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress atlassian/jira-software:8.7.1
2020-02-11T08:54:02.839Z        INFO    Need to update DB
2020-02-11T08:54:02.839Z        INFO    Downloading DB...
2020-02-11T08:54:06.419Z        INFO    Reopening DB...
2020-02-11T08:54:18.863Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.7.1 (ubuntu 18.04)
============================================
Total: 107 (UNKNOWN: 0, LOW: 19, MEDIUM: 67, HIGH: 21, CRITICAL: 0)
```
