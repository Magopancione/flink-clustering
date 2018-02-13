#!/bin/bash
touch /var/log/esito 
string=$(cat /var/log/esito)

if [[ $string != *"finished"* ]]; then
/opt/flink/bin/flink run -c it.almaviva.giotto.processing.WordCount /opt/flink/lib/flink-test-1.0-SNAPSHOT.jar > /var/log/esito
fi
