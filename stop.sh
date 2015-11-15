#!/bin/bash

pkill redis-server
ps aux | grep java | grep gateway/build/libs/gateway-1.0.0-SNAPSHOT.war | awk '{print $2}' | xargs kill
ps aux | grep java | grep ui/build/libs/ui-1.0.0-SNAPSHOT.war | awk '{print $2}' | xargs kill
ps aux | grep java | grep resource/build/libs/resource-1.0.0-SNAPSHOT.war | awk '{print $2}' | xargs kill
ps aux | grep java | grep admin/build/libs/admin-1.0.0-SNAPSHOT.war | awk '{print $2}' | xargs kill
