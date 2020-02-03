# Atlassian Jira Software

Atlassian Jira Software, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/jira-software:8.7.0-alpine-3.11.3
2020/02/03 22:47:08 [INFO] ▶ Start clair-scanner
2020/02/03 22:47:18 [INFO] ▶ Server listening on port 9279
2020/02/03 22:47:18 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/03 22:47:18 [INFO] ▶ Analyzing fb5a0358c6273642ac9a71791ca35ce2f59d2553ea43dffcaabb8065ab7cb5a5
2020/02/03 22:47:18 [INFO] ▶ Analyzing 043f68d4781a10ef6f3e667f9902526b5e425ce61b1b360cf2fc931f46fc60f6
2020/02/03 22:47:18 [INFO] ▶ Analyzing 2b97ef8f934d3c4a0a0378f8e53b7b8e3e6f2bf95fca4b4596cf46122eec8ada
2020/02/03 22:47:19 [INFO] ▶ Analyzing 48bfd080cb90b8b82e7777105a954c779176562d3f7c820211109c1927d6dd13
2020/02/03 22:47:20 [INFO] ▶ Analyzing 2626e5230a7e65e396fd85ca8d78fb50f33b2c8ee88ec0b82ddadfd8fad5fe1a
2020/02/03 22:47:20 [INFO] ▶ Analyzing 04fd5848c638cced27b4b3661a53f0e51a413395d64b37f1dab8865398aff581
2020/02/03 22:47:20 [INFO] ▶ Image [secureimages/jira-software:8.7.0-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress secureimages/jira-software:8.7.0-alpine-3.11.3
2020-02-03T20:47:22.988Z        INFO    Need to update DB
2020-02-03T20:47:22.988Z        INFO    Downloading DB...
2020-02-03T20:47:26.975Z        INFO    Reopening DB...
2020-02-03T20:47:37.458Z        INFO    Detecting Alpine vulnerabilities...

secureimages/jira-software:8.7.0-alpine-3.11.3 (alpine 3.11.3)
==============================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/atlassian/jira-software](https://hub.docker.com/r/atlassian/jira-software)
```
docker pull atlassian/jira-software:8.7.0
```

Security scanning using Clair
```
clair-scanner atlassian/jira-software:8.7.0
2020/02/03 22:48:10 [INFO] ▶ Start clair-scanner
2020/02/03 22:48:23 [INFO] ▶ Server listening on port 9279
2020/02/03 22:48:23 [INFO] ▶ Analyzing 0a83f61838ece143b24a4555f0b9ee1cd45e1a9f4af16a5b2f714868b4ae6546
2020/02/03 22:48:23 [INFO] ▶ Analyzing 076ba28069d5d2c1520533138630ca87b29cb86ea460ab08a39df8b77d5425a0
2020/02/03 22:48:23 [INFO] ▶ Analyzing 70e53499a05a2ed55f7e0e8750870f3c5b2cd1fd5c5583086a1ba4dc9f3e5915
2020/02/03 22:48:23 [INFO] ▶ Analyzing a1a84f0f6a99a7d15e5b85e6d3df412ce94227aaee11a373667e9edad23f5646
2020/02/03 22:48:23 [INFO] ▶ Analyzing cf1b1835779ccc541c6faed1d3e2305f852412afe53eb02ee8d45a57f5ab0269
2020/02/03 22:48:24 [INFO] ▶ Analyzing d14f5d0c56bf0afd83a4799ea53531c86ab210ba7e73e5db3586b0a70a343ef8
2020/02/03 22:48:24 [INFO] ▶ Analyzing b7fbcccee4857f09befcdcd1f94090d108b6297e3f7541d4da6660259235ced4
2020/02/03 22:48:24 [INFO] ▶ Analyzing fc4b98ad69cf0296bf3930e3c3eb8ec7936e23d226369b8b20d1798f34adcad0
2020/02/03 22:48:24 [INFO] ▶ Analyzing 8e0837783cc47f2ab670b32cd20adab29d7c1c5183ddbe5843fbe7dbe0b35247
2020/02/03 22:48:24 [INFO] ▶ Analyzing cce96aa81545aaf43fbe758e8e367e5cb850232115b926bcf51ca5648a3a1c54
2020/02/03 22:48:24 [INFO] ▶ Analyzing c2dffe22ade5323cdc9c2aabd6b201bfb3159a7062b7966b3e6e3b5d83db21f2
2020/02/03 22:48:24 [INFO] ▶ Analyzing 130c73063a890c12a58f35271aa6ba54253d5d428efb969f11d00616170d9db3
2020/02/03 22:48:24 [INFO] ▶ Analyzing 8bf370a9f31350ef44a13839c2359ff1fbeaed543e6d3178064b67e80583e82e
2020/02/03 22:48:24 [INFO] ▶ Analyzing 07ef55c48b1b29cd5e823c81eec2308dd56265b7025cccc218c6b7bab2062344
2020/02/03 22:48:24 [INFO] ▶ Analyzing 563a8ffc2715fcb041cf5fe2d26811bd8a5a35b250bd04bd398861f8ed271fca
2020/02/03 22:48:24 [WARN] ▶ Image [atlassian/jira-software:8.7.0] contains 46 total vulnerabilities
2020/02/03 22:48:24 [ERRO] ▶ Image [atlassian/jira-software:8.7.0] contains 46 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.3 --no-progress atlassian/jira-software:8.7.0
2020-02-03T20:48:33.047Z        INFO    Need to update DB
2020-02-03T20:48:33.047Z        INFO    Downloading DB...
2020-02-03T20:48:36.516Z        INFO    Reopening DB...
2020-02-03T20:48:49.491Z        INFO    Detecting Ubuntu vulnerabilities...

atlassian/jira-software:8.7.0 (ubuntu 18.04)
============================================
Total: 113 (UNKNOWN: 0, LOW: 19, MEDIUM: 73, HIGH: 21, CRITICAL: 0)
```
