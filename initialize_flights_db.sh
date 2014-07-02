if [ -f "/Users/wlund/git-workspace/wxlund/grails-sqlf-pubs/locator1"]; then
    rm -Rf locator1 server1 server2
fi

mkdir locator1 server1 server2

sqlf locator start -peer-discovery-port=4111 -client-bind-address=localhost -client-port=1357 -dir=locator1
sqlf server start -dir=server1 -bind-address=localhost -client-port=1358 -locators=localhost[4111]
sqlf server start -dir=server2 -bind-address=localhost -client-port=1359 -locators=localhost[4111]

cd /Users/wlund/git-workspace/wxlund/grails-sqlf-flights/db/scripts/quickstart
sqlf run 'create_colocated_schema.sql';
sqlf run 'loadTables.sql';
