FROM debian:jessie

RUN apt-get update && apt-get -y upgrade && apt-get -y install sshfs && apt-get install -y vsftpd
RUN apt-get install -y ftp
RUN apt-get install -y vim
RUN echo "local_enable=YES" >> /etc/vsftpd.conf
#RUN echo "chroot_local_user=YES" >> /etc/vsftpd.conf
RUN echo "write_enable=YES" >> /etc/vsftpd.conf
RUN echo "pasv_enable=YES"  >> /etc/vsftpd.conf
RUN echo "pasv_max_port=30010" >> /etc/vsftpd.conf
RUN echo "pasv_min_port=30000" >> /etc/vsftpd.conf
RUN echo "port_enable=YES"  >> /etc/vsftpd.conf
#pasv_addr_resolve=YES
#pasv_address=
RUN echo "ftp_data_port=20" >> /etc/vsftpd.conf
#probably dont use this
#RUN echo "pasv_promiscuous=YES" >> /etc/vsftpd.conf




#RUN echo "local_umask=022" >> /etc/vsftpd.conf
#RUN echo "local_umask=022" >> /etc/vsftpd.conf
RUN sed -i "s/listen=NO/listen=YES/" /etc/vsftpd.conf
RUN sed -i "s/listen_ipv6=YES/listen=NO/" /etc/vsftpd.conf
RUN sed -i "s/anonymous_enable=YES/anonymous_enable=NO/" /etc/vsftpd.conf
#RUN echo "listen_port=80" >> /etc/vsftpd.conf
RUN sed -i -e "s/pam_service_name=vsftpd/pam_service_name=ftp/g" /etc/vsftpd.conf 
#RUN service vsftpd start || echo 1
#RUN sshfs -p 23 root@localhost:/ /mymount
