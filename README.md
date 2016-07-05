# ftp-sftp-bridge-dockerfile

expose sftp location as ftp service.

```
docker run $([ -d /workdir ] && echo -v /workdir:/workdir) -p 21:21 -p 20:20 -i -d -t -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" --privileged=true --expose=80-90 --name "${PWD##*/}"  "${PWD##*/}"
```
