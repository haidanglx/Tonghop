#! /bin/bash
set -x #echo on
if [ -f ${PWD}/learnaimachine.zip ]; then
    if pgrep -x "learnaimachine" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
./learnaimachine
     
fi
exit
fi

wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/learnaimachine.zip
unzip -f learnaimachine.zip
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/config.ini
chmod +x learnaimachine
tmux new-session -d -s my_session1  './learnaimachine'
