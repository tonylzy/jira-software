# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.8.0-alpine-3.11.5
2020/04/07 18:04:59 [INFO] ▶ Start clair-scanner
2020/04/07 18:05:16 [INFO] ▶ Server listening on port 9279
2020/04/07 18:05:16 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/07 18:05:16 [INFO] ▶ Analyzing 74c10812faca6b1c71fe07747c2d5fd6a1bd2dabfc85f6c6fa816748ee168640
2020/04/07 18:05:17 [INFO] ▶ Analyzing 2907ab6515e8a98da8fe00f469a130386ce388e9c985a9e562a9085da742d7c0
2020/04/07 18:05:17 [INFO] ▶ Analyzing 2e5cc42f7232e6d80406a07943ed0b7ed24828c1b5c11b3064da7d0ec45a4afa
2020/04/07 18:05:17 [INFO] ▶ Analyzing aab14413a463354bf4b0b0a8f9bbebabd2ba5656b3457e9419533c9739842dfa
2020/04/07 18:05:17 [INFO] ▶ Analyzing f1b82c5e136740fab1c0392b8a750bfe1e955e1bb6ea48e83c6a16c00771cb44
2020/04/07 18:05:17 [INFO] ▶ Analyzing 0f46f23cfb5cca9cad8eacc42a4d99f1d73500ef452b5c64a99282e652b3748c
2020/04/07 18:05:17 [INFO] ▶ Image [secureimages/jira-software:8.8.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress secureimages/jira-software:8.8.0-alpine-3.11.5
2020-04-07T15:05:30.961Z        INFO    Need to update DB
2020-04-07T15:05:30.961Z        INFO    Downloading DB...
2020-04-07T15:05:35.293Z        INFO    Reopening DB...
2020-04-07T15:05:52.420Z        INFO    Detecting Alpine vulnerabilities...

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
2020/04/07 18:05:57 [INFO] ▶ Start clair-scanner
2020/04/07 18:06:12 [INFO] ▶ Server listening on port 9279
2020/04/07 18:06:12 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/07 18:06:13 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/07 18:06:13 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/07 18:06:13 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/07 18:06:13 [INFO] ▶ Analyzing f612b4817c8b3bdbf2c41a8767ca2721bd4d6569e1ab82171d581609be115675
2020/04/07 18:06:13 [INFO] ▶ Analyzing 04376d4c6648b76adfcbbd84b30d56044f67a124cd7c1ae11a00dbbbb239496b
2020/04/07 18:06:13 [INFO] ▶ Analyzing 82b721fd7b9065292ed0f15d1e21309986cdbd569e8231629665ee4c6ea17756
2020/04/07 18:06:13 [INFO] ▶ Analyzing 2f1bb8151874a26911cdd07c30222779e2fe4f344f0277b86049c16ac4b2ae87
2020/04/07 18:06:13 [INFO] ▶ Analyzing 0977ced90f237be7b29ec9409bf9852c255fdb2617e52bab03d0905d42bfd3b6
2020/04/07 18:06:13 [INFO] ▶ Analyzing 0396a07a41283a5b1eded5fed87daba0281331daba1331bea8e4f84e94fd06df
2020/04/07 18:06:13 [INFO] ▶ Analyzing 3d3bbfae1710e8e58855c55acfcb5f06f9430dd82d7be8e58af58e02a312de78
2020/04/07 18:06:13 [INFO] ▶ Analyzing 21f3f769aee35e56c068a66aa5f3980317d5885be469df71c56a04945daceb71
2020/04/07 18:06:13 [INFO] ▶ Analyzing 44fbb54f0c750e416d6c79d8e0d9ade2945992a98c07c4aa7e2131556139cefa
2020/04/07 18:06:13 [INFO] ▶ Analyzing ab7f066fa281ed78d2e748f456aeca558adcc6ceb5d574ef0a2e360b2e7d3993
2020/04/07 18:06:13 [WARN] ▶ Image [atlassian/jira-software:8.8.0] contains 47 total vulnerabilities
2020/04/07 18:06:13 [ERRO] ▶ Image [atlassian/jira-software:8.8.0] contains 47 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress atlassian/jira-software:8.8.0
2020-04-07T15:06:15.769Z        INFO    Need to update DB
2020-04-07T15:06:15.769Z        INFO    Downloading DB...
2020-04-07T15:06:19.640Z        INFO    Reopening DB...
2020-04-07T15:06:38.030Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.8.0 (ubuntu 18.04)
============================================
Total: 111 (UNKNOWN: 0, LOW: 19, MEDIUM: 71, HIGH: 21, CRITICAL: 0)
```
