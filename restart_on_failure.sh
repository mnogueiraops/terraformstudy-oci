#!/bin/bash

while true; do
if pgrep -f "java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.18.2-40.2.1/unix_args.txt" >/dev/null; then
echo "The server is running."
else
echo "The server is not running. Starting the script..."
sudo screen -dmS dawncraft /bin/bash -c "/opt/minecraft/run.sh"
fi
sleep 30
done