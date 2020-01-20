# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.6.1-alpine-3.11.3
2020/01/20 11:27:06 [INFO] ▶ Start clair-scanner
2020/01/20 11:27:14 [INFO] ▶ Server listening on port 9279
2020/01/20 11:27:14 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 11:27:14 [INFO] ▶ Analyzing cbaf92f1dfb95d736f38749b62cca20a7df37e32b1929396269e1d0c86b24775
2020/01/20 11:27:15 [INFO] ▶ Analyzing 0b90d23f9496a4f7e6ab41d088235cf8005afdb2cfba6c09c1bbc1d3b7fa4f57
2020/01/20 11:27:15 [INFO] ▶ Analyzing b0b4b47e8e635f6bf17cfb537e6dc51ea922f6c3309c6d0d44c76a9e02440b36
2020/01/20 11:27:15 [INFO] ▶ Analyzing 82ea17a5b791551e72cf75bf3324aba46bd091d76392d32e558f42c0fc7f3d68
2020/01/20 11:27:15 [INFO] ▶ Analyzing f8704cd93f2d3d6b17558de671a4f4bf83444e932d7889b9d377b83f756f45f5
2020/01/20 11:27:15 [INFO] ▶ Analyzing 8745ae554891b864f2128516d0fca4e2d30dc5bd82096df2ee75524fb4c5255f
2020/01/20 11:27:16 [INFO] ▶ Image [secureimages/jira-software:8.6.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/jira-software:8.6.1-alpine-3.11.3
2020-01-20T09:27:45.628Z        INFO    Need to update DB
2020-01-20T09:27:45.628Z        INFO    Downloading DB...
2020-01-20T09:27:50.039Z        INFO    Reopening DB...
2020-01-20T09:27:58.760Z        INFO    Detecting Alpine vulnerabilities...

secureimages/jira-software:8.6.1-alpine-3.11.3 (alpine 3.11.3)
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
2020/01/20 11:30:18 [INFO] ▶ Start clair-scanner
2020/01/20 11:30:28 [INFO] ▶ Server listening on port 9279
2020/01/20 11:30:28 [INFO] ▶ Analyzing 07ac7ec391137e61e19e91d1021b02adb5162b41f76ab299e641f21157408db7
2020/01/20 11:30:28 [INFO] ▶ Analyzing 372a325e7e99e7290ad127e2d75302a3cf9e44a16da67eb176b00c289eb12569
2020/01/20 11:30:28 [INFO] ▶ Analyzing ba7a82b51caab0d8ec7ba13e02cfbf110ef4ab1330164964b8d54fe456cd24d5
2020/01/20 11:30:28 [INFO] ▶ Analyzing ee8eca206af765a26428d3b73d2f6e0e5903b30abf1eb3a35a5141cdff4b695a
2020/01/20 11:30:28 [INFO] ▶ Analyzing 5071a0c98c5474717729862112cbe99b8a63b37bd8f3ba9e84a5715434806036
2020/01/20 11:30:28 [INFO] ▶ Analyzing a19c8b70359a66c96c74bed049fda8c7f4c907177c9d45fe382d9603cfca9a56
2020/01/20 11:30:28 [INFO] ▶ Analyzing 0836b02634211829768abbe3a938ce14ad1dc15dbdf3f83f22141c157334c82e
2020/01/20 11:30:28 [INFO] ▶ Analyzing f2e64e8ba775ccea79f2c372c23cc5d22f6cabdc32aec5d34f152b95982b1a2b
2020/01/20 11:30:28 [INFO] ▶ Analyzing 5afdc31bf0844d6f101f4b52c06bccc762ed3fca9aa9b0ac91122e833a9059a6
2020/01/20 11:30:29 [INFO] ▶ Analyzing 92d787730fc02deb487255a8337f27274996478759902a51e7fcf4a02503f73f
2020/01/20 11:30:29 [INFO] ▶ Analyzing f92d12d30d28608facaf58ca34b76e25ec058cc52201d34291c72ade1f0b1356
2020/01/20 11:30:29 [INFO] ▶ Analyzing 3f373b0795bf7f1b95395816d9c54c95b7193521615a4de8962776e76e934948
2020/01/20 11:30:29 [INFO] ▶ Analyzing bca93eefbecb6562323ab5cf2e9839e2cf426833c5cb0855dc202998c6c255c9
2020/01/20 11:30:29 [INFO] ▶ Analyzing b30cefe25bbf6971694ea1f073492d56da4c31ff84df36af82828bb83b8b5752
2020/01/20 11:30:29 [INFO] ▶ Analyzing 452f81259c886d245ec9c3911da495f712fff3c026aa7d25beab9c423b4a0166
2020/01/20 11:30:29 [WARN] ▶ Image [atlassian/jira-software:8.6.1] contains 46 total vulnerabilities
2020/01/20 11:30:29 [ERRO] ▶ Image [atlassian/jira-software:8.6.1] contains 46 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress atlassian/jira-software:8.6.1
2020-01-20T09:31:35.285Z        INFO    Need to update DB
2020-01-20T09:31:35.285Z        INFO    Downloading DB...
2020-01-20T09:31:39.718Z        INFO    Reopening DB...
2020-01-20T09:31:51.193Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.6.1 (ubuntu 18.04)
============================================
Total: 115 (UNKNOWN: 0, LOW: 19, MEDIUM: 71, HIGH: 24, CRITICAL: 1)
```
