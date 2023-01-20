#!/bin/bash
echo 'openvpn closes connection...'
sleep 3
VPN_PATH=$(openvpn3 sessions-list | grep Path: | sed 's/.* //')
openvpn3 session-manage --disconnect --path $VPN_PATH
