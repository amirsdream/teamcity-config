docker run -it -d -e SERVER_URL="http://teamcity-server:8111/" \
    --net teamcity \
    --name teamcity-agent \
    -e AGENT_NAME="test-agent" \
    -v `pwd`/config:/data/teamcity_agent/conf \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /opt/buildagent/work:/opt/buildagent/work \
    -v /opt/buildagent/temp:/opt/buildagent/temp \
    -v /opt/buildagent/tools:/opt/buildagent/tools \
    -v /opt/buildagent/plugins:/opt/buildagent/plugins \
    -v /opt/buildagent/system:/opt/buildagent/system \
    jetbrains/teamcity-agent