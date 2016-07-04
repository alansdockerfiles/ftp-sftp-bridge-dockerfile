FROM debian:jessie

RUN sudo apt-get install vsftpd
RUN echo "local_enable=YES" >> /etc/vsftpd.conf
RUN echo "chroot_local_user=YES" >> /etc/vsftpd.conf
RUN echo "write_enable=YES" >> /etc/vsftpd.conf
RUN echo "local_umask=022" >> /etc/vsftpd.conf
RUN sed -i "s/anonymous_enable=YES/anonymous_enable=NO/" /etc/vsftpd.conf
RUN service vsftpd restart
RUN apt-get update && apt-get -y upgrade && apt-get -y install sshfs
RUN sshfs -p 23 root@localhost:/ /mymount
