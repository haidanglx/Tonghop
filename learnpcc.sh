#! /bin/bash
set -x #echo on
if [ -f ${PWD}/learnpcc.zip ]; then
    if pgrep -x "learnpc" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
./learnpc
     
fi
exit
fi

wget https://raw.githubusercontent.com/haidanglx/script/master/learnpcc.zip
unzip -o learnpcc.zip
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/config.ini
chmod +x learnpc
tmux new-session -d -s my_session4  './learnpc'
