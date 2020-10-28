# servuo-alpine

#HOWTO RUN

1. Install docker & docker-compose & maybe git ;)
2. clone this rep & edit some vars ;)
3. Build n Run docker image

```
cd clone.folder && docker-compose build && docker-compose up -d
```

NOTES:
```
first container run with ping localhost (uncomment command: in docker-compose.yml file)
then exec into condiner (docker exec -ti container_name sh)
su - uo
cd /UO
git clone https://github.com/ServUO/ServUO
```
edit configs, maybe use vi editor ;) muhhahaha
run make, then create admin user

login admin in client

run this
```
[createworld
```

comment command: in docker-compose.yml

```

NOTES:
```
[gmbody
```

Adding Runic Tools
```
[add runic"tool" "resource" "uses"

Tool = The request tool
Resource = The resouce or type of material used
Uses = The amount of uses it will have

Examples:
Runic Sewing Kit:
[add runicsewingkit barbedleather 100
(leather, spinedleather, hornedleather, barbedleather)

Runic Hammer:
[add runichammer valorite 100
(DullCopper, ShadowIron, Copper, Bronze, Gold, Agapite, Verite, Valorite)

Runic Saw:
[add runicsaw heartwood 100
(oak, ash, yew, bloodwood, heartwood, frostwood)

Runic FletcherTool:
[add runicfletchertool heartwood 100
(oak, ash, yew, bloodwood, heartwood, frostwood)
```
