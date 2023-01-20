#!/bin/bash
echo 'openvpn connection started...'
sleep 3
OVPN_FILE_PATH=$(ls $PWD/*.ovpn)
exec openvpn3 session-start --config $OVPN_FILE_PATH & exit 0
