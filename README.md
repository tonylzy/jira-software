# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.8.0-alpine-3.11.5
2020/04/12 12:31:29 [INFO] ▶ Start clair-scanner
2020/04/12 12:31:41 [INFO] ▶ Server listening on port 9279
2020/04/12 12:31:41 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/12 12:31:41 [INFO] ▶ Analyzing c349cb5b9319f9c1bd884edb0fae5f573ee1907d75fa9ad6d09f1d8226fa8347
2020/04/12 12:31:41 [INFO] ▶ Analyzing 98f01a791b23dfa2d8ac970420965ad4b0f7b977dcaeb9b1d83a4cd2f1a66540
2020/04/12 12:31:41 [INFO] ▶ Analyzing 7c5428f730acae8101026260f04d260435e0681c39ccca42ce8ef11851b92ec6
2020/04/12 12:31:41 [INFO] ▶ Analyzing b7e8dcd82fd11ec688c48778b0c9eef3d2c570c2ff4f7cee642936c3412a5d55
2020/04/12 12:31:42 [INFO] ▶ Analyzing 0ae573b4d6878314e038c54dfd813cde93901022362d7b2d3410be288103910e
2020/04/12 12:31:42 [INFO] ▶ Analyzing a285fed37c28e703d4c2651d971934986ad526a196695150dc8630460e17ac76
2020/04/12 12:31:42 [INFO] ▶ Image [secureimages/jira-software:8.8.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress secureimages/jira-software:8.8.0-alpine-3.11.5
2020-04-12T09:31:44.983Z        INFO    Need to update DB
2020-04-12T09:31:44.983Z        INFO    Downloading DB...
2020-04-12T09:31:48.495Z        INFO    Reopening DB...
2020-04-12T09:32:06.429Z        INFO    Detecting Alpine vulnerabilities...

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
2020/04/12 12:32:11 [INFO] ▶ Start clair-scanner
2020/04/12 12:32:27 [INFO] ▶ Server listening on port 9279
2020/04/12 12:32:27 [INFO] ▶ Analyzing 9b149207c14ccc7c04f7f633b0a930523710ba21a7b16e2ecfe39d48f66cc21f
2020/04/12 12:32:28 [INFO] ▶ Analyzing cbdf172a7a4a570fda50e47076f05fe92941ea0c16217fcd49ac46ee77266fdd
2020/04/12 12:32:28 [INFO] ▶ Analyzing 98558aadc1dc3c58cfaf76054219beebaa9e77fdd4f69cddbdb3c0139b5e2e26
2020/04/12 12:32:28 [INFO] ▶ Analyzing 0d1696737b748c5cfcab13026189a06bc9af53751a545fb486482c73ff942051
2020/04/12 12:32:28 [INFO] ▶ Analyzing f612b4817c8b3bdbf2c41a8767ca2721bd4d6569e1ab82171d581609be115675
2020/04/12 12:32:28 [INFO] ▶ Analyzing 04376d4c6648b76adfcbbd84b30d56044f67a124cd7c1ae11a00dbbbb239496b
2020/04/12 12:32:28 [INFO] ▶ Analyzing 15af163721c6deaf7d3319ac9fcb785998c70e0332a74cc53a1ef5b10c747635
2020/04/12 12:32:28 [INFO] ▶ Analyzing 058d3202b07247ebb506be5c8276d86495d54ac8f43d00b40b9e76f245c06eb5
2020/04/12 12:32:28 [INFO] ▶ Analyzing 1d5fc432cdaa3e925baa7e95cfbbd8e793e6672925eba537435f387c17c9e668
2020/04/12 12:32:28 [INFO] ▶ Analyzing 8b9e5d87edfb3576555dd2728ebe948753f45f482c620accf0d8beb73c2fa146
2020/04/12 12:32:28 [INFO] ▶ Analyzing 5f140fc6e3a99ad96a5565e24c176fa9f36dd0e18857a65047a4d3d6a1048f60
2020/04/12 12:32:28 [INFO] ▶ Analyzing 9331970126fe399235eaca7b494d14d0be912f249ef2192a888230f8863bcfb0
2020/04/12 12:32:28 [INFO] ▶ Analyzing d184ea92ba49314e7faf420a7b7004bbd29c9386b23f48a33abc85640a09ee07
2020/04/12 12:32:28 [INFO] ▶ Analyzing d3b668ead15eb04499eece66793ac66d5824dfff2829cbdef81a12a9eccacb59
2020/04/12 12:32:28 [WARN] ▶ Image [atlassian/jira-software:8.8.0] contains 48 total vulnerabilities
2020/04/12 12:32:28 [ERRO] ▶ Image [atlassian/jira-software:8.8.0] contains 48 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress atlassian/jira-software:8.8.0
2020-04-12T09:32:31.159Z        INFO    Need to update DB
2020-04-12T09:32:31.159Z        INFO    Downloading DB...
2020-04-12T09:32:35.005Z        INFO    Reopening DB...
2020-04-12T09:32:53.364Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.8.0 (ubuntu 18.04)
============================================
Total: 114 (UNKNOWN: 0, LOW: 22, MEDIUM: 71, HIGH: 21, CRITICAL: 0)
```
