#!/bin/sh

# Copy the default configuration file.
cp $(brew list dnsmasq | grep /dnsmasq.conf.example$) /usr/local/etc/dnsmasq.conf
# Copy the daemon configuration file into place.
sudo cp $(brew list dnsmasq | grep /homebrew.mxcl.dnsmasq.plist) /Library/LaunchDaemons/
# Start Dnsmasq automatically.
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist

# Insert this into your /usr/local/etc/dnsmasq.conf (Not commented)
# address=/test/127.0.0.1
sudo mkdir -p /etc/resolver

sudo tee /etc/resolver/test >/dev/null <<EOF
nameserver 127.0.0.1
EOF
