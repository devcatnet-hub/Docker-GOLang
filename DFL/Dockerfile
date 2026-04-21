FROM deathwalker66/alpine

LABEL Maintainer="CatDEV <dev.catnet@gmail.com>"

### COPY
COPY ./PRC/profile /etc/profile
COPY SCP /SCP

### [ RUN ]
### [!]: Replace \ + && with ;\
RUN set -eux ;\  
### Set Up nsswitch.conf
    echo 'hosts: files dns' > /etc/nsswitch.conf ;\
### Install Packages.
    apk add --no-cache \
		go ;\
### make and Set APP dir
    mkdir /APP ;\
    chmod -R 777 /APP ;\    
### Set Script Dir
    chmod +x /SCP/* ;\
### Set COM Dir
    chmod -R 777 /COM ;\
### Clean [!]
    /SCP/clean.sh

### [ EXPOSE ]
EXPOSE 22

### [ ENTRYPOINT ]
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

### [ CMD ]
CMD ["/SCP/entrypoint.sh"]
