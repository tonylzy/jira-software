# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.8.0-alpine-3.11.5
2020/03/24 17:31:21 [INFO] ▶ Start clair-scanner
2020/03/24 17:31:32 [INFO] ▶ Server listening on port 9279
2020/03/24 17:31:32 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 17:31:32 [INFO] ▶ Analyzing 6c4f4de40fc719c646d2a4e6f2c55a35e9fef5ac113d56bfa323bbf48f6d1bac
2020/03/24 17:31:32 [INFO] ▶ Analyzing 268e354f6b4524b307f002ab674c89518174746b8d3b9e054a88a1b7db05c40b
2020/03/24 17:31:33 [INFO] ▶ Analyzing 7c7f66fd2757a3c558a51cb3659760ee6dfa36cf8006e70741537e63f1d04f6b
2020/03/24 17:31:33 [INFO] ▶ Analyzing 561d7b42eccb5d7c175ab3bc8c3a11af986838302164550f0876de58f0e2b6a8
2020/03/24 17:31:34 [INFO] ▶ Analyzing 49f45c0a69cee1696f0049c92e441c7f2f91c5a15393a86e7e3e90a4ae927f83
2020/03/24 17:31:34 [INFO] ▶ Analyzing a316a3954ced5404856f7087f50244f5d4d44be286d0bb7ee140deb3dd5c84c5
2020/03/24 17:31:34 [INFO] ▶ Image [secureimages/jira-software:8.8.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/jira-software:8.8.0-alpine-3.11.5
2020-03-24T15:31:36.875Z        INFO    Need to update DB
2020-03-24T15:31:36.875Z        INFO    Downloading DB...
2020-03-24T15:31:42.234Z        INFO    Reopening DB...
2020-03-24T15:32:00.739Z        INFO    Detecting Alpine vulnerabilities...

secureimages/jira-software:8.8.0-alpine-3.11.5 (alpine 3.11.5)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/jira-software](https://hub.docker.com/r/atlassian/jira-software)
```
docker pull atlassian/jira-software:8.8.0
```

Security scanning using Clair
```
clair-scanner atlassian/jira-software:8.8.0
2020/03/24 17:32:05 [INFO] ▶ Start clair-scanner
2020/03/24 17:32:21 [INFO] ▶ Server listening on port 9279
2020/03/24 17:32:21 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/03/24 17:32:21 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/03/24 17:32:21 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/03/24 17:32:21 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/03/24 17:32:21 [INFO] ▶ Analyzing f612b4817c8b3bdbf2c41a8767ca2721bd4d6569e1ab82171d581609be115675
2020/03/24 17:32:21 [INFO] ▶ Analyzing f00d12348981a919a475d880dede6fcf07c86fd1edbdc48a91bb4e2cb3eaf9ad
2020/03/24 17:32:21 [INFO] ▶ Analyzing 4817cb024da5f333bacfb0b7375d6a1369f182e67db39c0edcffee5ea0d49d25
2020/03/24 17:32:21 [INFO] ▶ Analyzing 847bc2c52d15388445828318a8be5e4f667393224e46b4559d2d59c44407d4d8
2020/03/24 17:32:21 [INFO] ▶ Analyzing bda8d512f8925ede5d225e815ab88d7a527606bb5467e4f0059974c4e4580328
2020/03/24 17:32:21 [INFO] ▶ Analyzing 194c6caa140580c56473cb8184afc9a6d5ae3323e3a97a2b4ca2c038e176aef1
2020/03/24 17:32:21 [INFO] ▶ Analyzing 49669919e08fec7cb299207b5e810a2d01bb69d9bece91fb0227eef9ce1d9b32
2020/03/24 17:32:22 [INFO] ▶ Analyzing a05ecb66bcd6a00db8e81fb65b25d3590c04e49ceb57a9cdfab73d62cec8151a
2020/03/24 17:32:22 [INFO] ▶ Analyzing 3bd485830d086dd8beb6b5293d61070d6bb7db9ec2333d9175a9469468aa93a7
2020/03/24 17:32:22 [INFO] ▶ Analyzing 4735f760ccf2374b0bd8f74400b71b88a00d046741b263af6d1105840e6343f5
2020/03/24 17:32:22 [WARN] ▶ Image [atlassian/jira-software:8.8.0] contains 46 total vulnerabilities
2020/03/24 17:32:22 [ERRO] ▶ Image [atlassian/jira-software:8.8.0] contains 46 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress atlassian/jira-software:8.8.0
2020-03-24T15:32:24.942Z        INFO    Need to update DB
2020-03-24T15:32:24.943Z        INFO    Downloading DB...
2020-03-24T15:32:28.506Z        INFO    Reopening DB...
2020-03-24T15:32:47.725Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.8.0 (ubuntu 18.04)
============================================
Total: 110 (UNKNOWN: 0, LOW: 19, MEDIUM: 70, HIGH: 21, CRITICAL: 0)
```
