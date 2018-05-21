#/bin/bash

#LOG_USAGE=/home/gregg/LOG_DIR/memory_usage.log
LOG_MONITOR=/home/gregg/LOG_DIR/memory_monitor.log

DATE=$(date +%Y%m%d)
TIME=$(date +%H:%M)
TIMESTAMP="$DATE $TIME"

TOTAL_MEM=$(free | grep Mem | awk '{printf "Memory: %s |", $2}')
TOTAL_MEM_USAGE=$(free | grep Mem | awk '{printf "Memory Used: %s |", $3}')
TOTAL_MEM_PERCENTAGE=$(free | grep Mem | awk '{printf "Memory %: (%.2f%%)", $3*100/$2}')

echo $TIMESTAMP $TOTAL_MEM $TOTAL_MEM_USAGE $TOTAL_MEM_PERCENTAGE
#echo $TIMESTAMP $TOTAL_MEM $TOTAL_MEM_USAGE $TOTAL_MEM_PERCENTAGE >> $LOG_MONITOR

#if [ $TOTAL_MEM_PERCENTAGE -eq 10 ]
#then
#        echo Hey
#        pwd
#fi