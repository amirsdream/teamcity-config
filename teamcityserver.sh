docker run -it -d --name teamcity-server  \
    --net teamcity \
    --hostname teamcity-server \
    -v `pwd`/data:/data/teamcity_server/datadir \
    -v `pwd`/logs:/opt/teamcity/logs  \
    -p 8111:8111 \
    jetbrains/teamcity-server