# ubuntu-xrdp [![Actions Status](https://github.com/naruhito/ubuntu-xrdp/workflows/dockerhub/badge.svg)](https://github.com/naruhito/ubuntu-xrdp/actions)

Yet another Ubuntu 22.04 desktop on docker with xrdp and sshd.

```
docker-compose pull
docker-compose up
docker-compose rm
```

## References
- [Why I cannot run `apt update` inside a fresh ubuntu:22.04?](https://stackoverflow.com/questions/71941032/why-i-cannot-run-apt-update-inside-a-fresh-ubuntu22-04)
- [突然の「Operation not permitted」—Dockerが採用するセキュリティ機構「Seccomp」とは何か？](https://www.creationline.com/lab/46861)
