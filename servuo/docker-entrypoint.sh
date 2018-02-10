#!/bin/bash

set -xe
chown -R uo:uo /UO
cd /UO/ServUO
sed -i -- 's/CompilerResults results = provider.CompileAssemblyFromFile( parms, "" );/CompilerResults results = provider.CompileAssemblyFromFile( parms, files );/g' ./Server/ScriptCompiler.cs
make clean && make build
exec gosu uo /UO/ServUO/ServUO.sh
#ping localhost
