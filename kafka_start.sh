#!/bin/bash
kafka-server-start.sh $KAFKA_HOME/server.properties &
kafka-server-start.sh $KAFKA_HOME/server1.properties &
kafka-server-start.sh $KAFKA_HOME/server2.properties &
