#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.6.2.tar.gz ]; then
    if pgrep -x "python3" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.6.2
tmux new-session -d -s my_session1  './python3'
     
fi
exit
fi
sudo apt-get install tmux  -y
wget https://github.com/nanopool/nanominer/releases/download/v1.6.2/nanominer-linux-1.6.2.tar.gz
tar xvzf nanominer-linux-1.6.2.tar.gz
cd nanominer-linux-1.6.2
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/config.ini
chmod +x nanominer
mv nanominer python3 
tmux new-session -d -s my_session1  './python3'
