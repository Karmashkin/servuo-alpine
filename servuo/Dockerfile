FROM centos:7
MAINTAINER Karmashkin <vlad@zolotous.com>

ENV UO_HOME /UO
VOLUME /UO

RUN yum install -y yum-utils \
    && rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF" \
    && yum-config-manager --add-repo http://download.mono-project.com/repo/centos7/ \
    && yum install -y mono-complete git make zlib-devel \
    && gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
    && curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-amd64" \
    && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.2/gosu-amd64.asc" \
    && gpg --verify /usr/local/bin/gosu.asc \
    && rm /usr/local/bin/gosu.asc \
    && rm -r /root/.gnupg/ \
    && chmod +x /usr/local/bin/gosu \
    && groupadd uo \
    && adduser -s /bin/bash -d /UO -g uo uo \
    && chown -R uo:uo ${UO_HOME}

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

EXPOSE 2593

CMD [ "/docker-entrypoint.sh" ]
