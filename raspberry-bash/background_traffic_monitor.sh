# Hello, this bash script when you reach limit 19tb of traffic!
######################################################################
# install vnstat:
#sudo apt-get install vnstat
#sudo systemctl reload vnstat
#check vnstat result via commant:
# vnstat --oneline | awk '{ print $11 }'
######################################################################
# crontab -e
# @reboot nohup ./background_traffic_monitor.sh > /dev/null 2>&1 &
######################################################################
# chmod +x background_traffic_monitor.sh
######################################################################
# .sh name background_traffic_monitor.sh
######################################################################

#!/bin/bash

# Set the threshold in terabytes
threshold_tb="TiB;19.5"

while true; do
    # Get the total month TIB of traffic from vnstat
    threshold_check=$(vnstat --oneline | awk '{ print $11 }')

    if [[ $threshold_check > $threshold_tb ]]; then
        echo "Total traffic exceeded $threshold_tb TB. Shutting down..."
        sleep 120
        shutdown -h now
        exit 0
    fi

    sleep 300  # Sleep for 5 minutes before checking again
done
