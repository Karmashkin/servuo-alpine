# servuo-alpine

#HOWTO RUN

1. Install docker & docker-compose & maybe git ;)

- docker
printf "[dockerrepo]\nname=Docker Repository\nbaseurl=https://yum.dockerproject.org/repo/main/centos/7/\nenabled=1\ngpgcheck=1\ngpgkey=https://yum.dockerproject.org/gpg" > /etc/yum.repos.d/docker.repo

yum install docker-engine -y && systemctl enable docker.service && systemctl start docker

- docker-compose
yum upgrade python* -y && yum install epel-release -y && yum install -y python-pip && pip install docker-compose && pip install backports.ssl_match_hostname --upgrade

2. clone this rep & edit some vars ;)

git clone https://git.uadreams.com/diffusion/...git

3. Build n Run docker image

cd clone.folder && time docker-compose up -d


NOTES:
```
first container run with ping localhost (uncomment command: in docker-compose.yml file)
then exec into condiner (docker exec -ti container_name sh)
su - uo
cd /UO
git clone https://github.com/ServUO/ServUO
edit configs, maybe use vi editor ;) muhhahaha
make & create admin user

login in client
run this
[xmlload Spawns/felucca.xml
[xmlload Spawns/ilshenar.xml
[xmlload Spawns/malas.xml
[xmlload Spawns/termur.xml
[xmlload Spawns/tokuno.xml
[xmlload Spawns/trammel.xml
and maybe other :)
[genchampions

then in GM panel "recreate world"

save and shutdown server

comment command: in docker-compose.yml

```


