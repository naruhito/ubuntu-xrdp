# ubuntu-xrdp [![Actions Status](https://github.com/naruhito/ubuntu-xrdp/workflows/dockerhub/badge.svg)](https://github.com/naruhito/ubuntu-xrdp/actions)

Yet another Ubuntu 22.04 GNOME desktop on docker with xrdp and sshd.

```
docker-compose pull
docker-compose up
docker-compose rm
```

## References

- [Why I cannot run `apt update` inside a fresh ubuntu:22.04?](https://stackoverflow.com/questions/71941032/why-i-cannot-run-apt-update-inside-a-fresh-ubuntu22-04)
    - Docker >= 20.10.9 is required.

- [突然の「Operation not permitted」—Dockerが採用するセキュリティ機構「Seccomp」とは何か？](https://www.creationline.com/lab/46861)
    - libseccomp needs to be updated on docker host.

- [Docker Tips - Full Ubuntu in a Container using XRDP on Windows (2022)](https://www.youtube.com/watch?v=0rl5145aEMk)
    - GNOME example, terminal has some configuration issue.
