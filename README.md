# ftp-sftp-bridge-dockerfile

expose sftp location as ftp service.

usage:
```
docker run -p 21:21 -p 20:20 -p 30000-30010:30000-30010 -i -d -t  --privileged=true --name ftp-sftp-bridge-dockerfile  xpika/ftp-sftp-bridge-dockerfile

docker exec -i -t ftp-sftp-bridge-dockerfile bash 

cd /root
passwd
mkdir mymount
sshfs ... mymount
```

then conect to your server as root

