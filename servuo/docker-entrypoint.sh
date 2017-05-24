#!/bin/bash

set -xe
chown -R uo:uo /UO
cd /UO/ServUO
exec gosu uo /UO/ServUO/ServUO.sh
#ping localhost
