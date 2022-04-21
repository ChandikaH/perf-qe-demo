#!/bin/bash
. ./envrc
bash $JMETER_DIR/bin/jmeter.sh -n -t $JMX_DIR/perf-demo.jmx -JpICThreadCount=300 -JpICRampupTime=100 -JpICRampDownPeriod=100 -JpICDuration=300 -JpICTargetThroughput=1850 -JsupcCount=20 -JsupcsPerQuery=4 -JcsvFileName=$JMX_DIR/data/customerData.csv -JpICInitialDelay=10 -l $JTL_DIR/perf-demo_$(date +%b)_$(date +%d)_$(date +%Y)-$(date +%H)_$(date +%M).jtl -j $LOG_DIR/perf-demo_$(date +%b)_$(date +%d)_$(date +%Y)-$(date +%H)_$(date +%M).log
