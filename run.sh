#!/bin/sh
type="dev"
if [ $# -gt 0 ];then
    type=$1
fi
if [ $type == 'prod' ];then
    mvn clean install  -Dmaven.test.skip=true
    scp -r ./target/url-0.0.1.jar ubuntu@191.168.1.92:/home/ubuntu/services/shorturl/
fi
if [ $type == 'dev' ]; then
    mvn clean install  -Dmaven.test.skip=true
    scp -r ./target/url-0.0.1.jar ubuntu@191.168.1.92:/home/ubuntu/services/shorturl/
fi
