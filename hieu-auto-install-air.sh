#!/bin/bash

# 5. Build OpenHD
echo Installing OpenHD for AIR station
cd OpenHD
mkdir build
if [ $? -ne 0]; then echo ''build' folder existed, rebuilding..'; fi
cd build
cmake -DENABLE_AIR=ON -DENABLE_USB_CAMERAS=ON ..
make -j$(nproc)

# 6. Cài đặt phần nền OpenHD vào hệ thống
sudo make install

echo installed at: /usr/local/bin/openhd