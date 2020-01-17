# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.6.1-alpine-3.11.2
2020/01/17 12:04:13 [INFO] ▶ Start clair-scanner
2020/01/17 12:04:21 [INFO] ▶ Server listening on port 9279
2020/01/17 12:04:21 [INFO] ▶ Analyzing 30a36bc16c80b7f41fbae0f2a65857845a322dc98c11b67026ab338cdd2642c8
2020/01/17 12:04:22 [INFO] ▶ Analyzing ad80f498509696e33f8492ccfd235eaecdc2aeb589c083c32bd47ee059c8f3a9
2020/01/17 12:04:22 [INFO] ▶ Analyzing d712d7c534abf038cd9897ed91c8b8a192746c195d874432277bbb020192286e
2020/01/17 12:04:22 [INFO] ▶ Analyzing bb324902ef6ab3c78872578d7060798c30d020859e80b42d4c9412d4c952e104
2020/01/17 12:04:22 [INFO] ▶ Analyzing da0ae4ef5d520a7517c6e09da883d613fc075d40a02346758088ae33fe85cb6a
2020/01/17 12:04:22 [INFO] ▶ Analyzing 5710e0515c3ac6821c8d3eb66e942d57f5cba136ae79c1163f7a423bba2b2099
2020/01/17 12:04:23 [INFO] ▶ Analyzing 111be89de0f7acb9650a1b898a179ba51db225f1ce6ffbb95099acd12b4d7337
2020/01/17 12:04:23 [INFO] ▶ Analyzing ae11e106ed998ce0b459ebc5147e21636f201cd34dc7a23e851692489f27424c
2020/01/17 12:04:23 [INFO] ▶ Image [secureimages/jira-software:8.6.1-alpine-3.11.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/jira-software:8.6.1-alpine-3.11.2
2020-01-17T10:05:49.098Z        INFO    Need to update DB
2020-01-17T10:05:49.098Z        INFO    Downloading DB...
2020-01-17T10:05:53.755Z        INFO    Reopening DB...
2020-01-17T10:06:02.802Z        INFO    Detecting Alpine vulnerabilities...

secureimages/jira-software:8.6.1-alpine-3.11.2 (alpine 3.11.2)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/jira-software](https://hub.docker.com/r/atlassian/jira-software)
```
docker pull atlassian/jira-software:8.6.1
```

Security scanning using Clair
```
clair-scanner atlassian/jira-software:8.6.1
2020/01/17 12:07:13 [INFO] ▶ Start clair-scanner
2020/01/17 12:07:25 [INFO] ▶ Server listening on port 9279
2020/01/17 12:07:25 [INFO] ▶ Analyzing 07ac7ec391137e61e19e91d1021b02adb5162b41f76ab299e641f21157408db7
2020/01/17 12:07:25 [INFO] ▶ Analyzing 372a325e7e99e7290ad127e2d75302a3cf9e44a16da67eb176b00c289eb12569
2020/01/17 12:07:25 [INFO] ▶ Analyzing ba7a82b51caab0d8ec7ba13e02cfbf110ef4ab1330164964b8d54fe456cd24d5
2020/01/17 12:07:25 [INFO] ▶ Analyzing ee8eca206af765a26428d3b73d2f6e0e5903b30abf1eb3a35a5141cdff4b695a
2020/01/17 12:07:25 [INFO] ▶ Analyzing 5071a0c98c5474717729862112cbe99b8a63b37bd8f3ba9e84a5715434806036
2020/01/17 12:07:25 [INFO] ▶ Analyzing a19c8b70359a66c96c74bed049fda8c7f4c907177c9d45fe382d9603cfca9a56
2020/01/17 12:07:25 [INFO] ▶ Analyzing 0836b02634211829768abbe3a938ce14ad1dc15dbdf3f83f22141c157334c82e
2020/01/17 12:07:25 [INFO] ▶ Analyzing 48cca5ce3291042175c26d19631d17e4e972fec4e62ed3a9ebad2e645759bcf6
2020/01/17 12:07:25 [INFO] ▶ Analyzing 6cc4a96845b2433caa9b515e843bb89c43c0b4ce974d8ceb05bcacb638fa6ede
2020/01/17 12:07:25 [INFO] ▶ Analyzing 0efe11ab41c43ac1b12a8ab86d6a44bc2e6d03377433c8f2777b3dff9854ca7f
2020/01/17 12:07:25 [INFO] ▶ Analyzing 3678e4f45cc759f66ad83b8734a484e166ea8b9b936234151edd06894801323c
2020/01/17 12:07:25 [INFO] ▶ Analyzing da9646de856ba7d6390df39e4d8062e5a95ee070960790947680e448cdd96583
2020/01/17 12:07:26 [INFO] ▶ Analyzing f294527e6c458c0b83ab67dcb7a8fd6f68af2c2f4979eb55399684f109a1de73
2020/01/17 12:07:26 [INFO] ▶ Analyzing c031fe661ee1ef3b18f6cda9628160e037fe5940ab14349cc9ce4a8f941797cd
2020/01/17 12:07:26 [INFO] ▶ Analyzing 47bd79aeae4e38e86d2a27312add6621b704b62bdcaa780d268d5c0d1d9ae758
2020/01/17 12:07:26 [WARN] ▶ Image [atlassian/jira-software:8.6.1] contains 46 total vulnerabilities
2020/01/17 12:07:26 [ERRO] ▶ Image [atlassian/jira-software:8.6.1] contains 46 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress atlassian/jira-software:8.6.1
2020-01-17T10:07:52.281Z        INFO    Need to update DB
2020-01-17T10:07:52.281Z        INFO    Downloading DB...
2020-01-17T10:07:56.564Z        INFO    Reopening DB...
2020-01-17T10:08:08.311Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.6.1 (ubuntu 18.04)
============================================
Total: 115 (UNKNOWN: 0, LOW: 19, MEDIUM: 72, HIGH: 24, CRITICAL: 0)
```
