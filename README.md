# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.8.0-alpine-3.11.3
2020/03/19 22:15:14 [INFO] ▶ Start clair-scanner
2020/03/19 22:15:25 [INFO] ▶ Server listening on port 9279
2020/03/19 22:15:25 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/03/19 22:15:26 [INFO] ▶ Analyzing e684cadbefc9171ede5b04fd43c9352e67d2876af41c913d41793d9f63d202e1
2020/03/19 22:15:27 [INFO] ▶ Analyzing fb8c3a128bdb3fad96bef0581d4ffa550927d0aec4886ae5de880ebdb8d3e6b1
2020/03/19 22:15:27 [INFO] ▶ Analyzing 7cae3a4b45d8bf2ef87f72c5b1e3ceae4e286b8f76300f64435a05e6452d80ad
2020/03/19 22:15:27 [INFO] ▶ Analyzing a29b29880412fd8db6749492110197b7e10b716fa2903115a92cafc4082f2d75
2020/03/19 22:15:29 [INFO] ▶ Analyzing d1fce2c782018a850b9109f0ba408b250e8924318aba6140699c6c1f64e4095f
2020/03/19 22:15:29 [INFO] ▶ Analyzing b0e8241334d3e8c3aa30fabec299539ec49c1901839bc454522a9a7b059ebafe
2020/03/19 22:15:29 [INFO] ▶ Image [secureimages/jira-software:8.8.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress secureimages/jira-software:8.8.0-alpine-3.11.3
2020-03-19T20:15:32.080Z        INFO    Need to update DB
2020-03-19T20:15:32.081Z        INFO    Downloading DB...
2020-03-19T20:15:36.111Z        INFO    Reopening DB...
2020-03-19T20:15:56.020Z        INFO    Detecting Alpine vulnerabilities...

secureimages/jira-software:8.8.0-alpine-3.11.3 (alpine 3.11.3)
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
2020/03/19 22:16:01 [INFO] ▶ Start clair-scanner
2020/03/19 22:16:14 [INFO] ▶ Server listening on port 9279
2020/03/19 22:16:14 [INFO] ▶ Analyzing 15348efe8a757700295ae7836d4970a53d47b312e5c0f17f8daa1357d32f04ff
2020/03/19 22:16:15 [INFO] ▶ Analyzing d6adeec240849e4c822098579a237dc85123e2b873cbdb0343c3dcb5023f68ea
2020/03/19 22:16:15 [INFO] ▶ Analyzing af28ce57eceb1be549da671ae5b0d6a0cfa1bba1a8d797314a273852eb3e63f0
2020/03/19 22:16:15 [INFO] ▶ Analyzing 672ea66db03e9962d1bf2504ff4ed7b4f121beda54876bdd7fc53b325beba8ad
2020/03/19 22:16:15 [INFO] ▶ Analyzing f44748ba5f8c2a7d63e9352f70322db6dd2fc19a20c7c2e7e194828d42169381
2020/03/19 22:16:15 [INFO] ▶ Analyzing 077305030afc071a486800af508b1a428399e8f49fffdec49ae055843a2104c4
2020/03/19 22:16:15 [INFO] ▶ Analyzing 12e4f6978f32d95e6d86b50d0ac1a669eb2868f527f2418d0d56960bd4488a6e
2020/03/19 22:16:15 [INFO] ▶ Analyzing 466cc244cc55a49386fd2a52c88a6f3dad5167446b975642594e4fa948ca6844
2020/03/19 22:16:15 [INFO] ▶ Analyzing c1c25a528291067d25f87656ebc5d90071aebef046204db906e93454fe679e56
2020/03/19 22:16:16 [INFO] ▶ Analyzing 1f04af3f1feb4962c5901e49c2c277ca246e6171dd82747f2334512920080ffc
2020/03/19 22:16:16 [INFO] ▶ Analyzing 3246d46894f749c2a7a5c107f6d9c5c6d5d245505406bd9621afdbd34fd9d815
2020/03/19 22:16:16 [INFO] ▶ Analyzing 97042f8e3f8da7e88a87f169f418569f7d7415a0d35abf78c7208f0c5b257a16
2020/03/19 22:16:16 [INFO] ▶ Analyzing 3643f6f3632d53f087c64fba70590f9e87b47214e11674f3c7d91d7dd567255b
2020/03/19 22:16:16 [INFO] ▶ Analyzing 9a215caa94dfac575c2831b4da8687007ba453ffcb062c4be168a233187db734
2020/03/19 22:16:16 [INFO] ▶ Analyzing 423b10d24e9b6bd42ffacbc831014431d3280120bfa943c6be60e5c98ce36965
2020/03/19 22:16:16 [WARN] ▶ Image [atlassian/jira-software:8.8.0] contains 46 total vulnerabilities
2020/03/19 22:16:16 [ERRO] ▶ Image [atlassian/jira-software:8.8.0] contains 46 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.2 --no-progress atlassian/jira-software:8.8.0
2020-03-19T20:16:18.708Z        INFO    Need to update DB
2020-03-19T20:16:18.708Z        INFO    Downloading DB...
2020-03-19T20:16:30.742Z        INFO    Reopening DB...
2020-03-19T20:16:46.876Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.8.0 (ubuntu 18.04)
============================================
Total: 110 (UNKNOWN: 0, LOW: 20, MEDIUM: 69, HIGH: 21, CRITICAL: 0)
```
