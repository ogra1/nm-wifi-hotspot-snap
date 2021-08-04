# nm-wifi-hotspot

This snap configures a WiFi hotsport talking to the network-manager snap.
It is designed to be used on an UbuntuCore appliance image and is only
tested in that context.

To use this package you need to have the network-manager snap installed

    snap install network-manager

... then connect to the network-manager interface with

    snap connect nm-wifi-hotspot:network-manager network-manager

This will create a hotspot with the default SSID "UbuntuCore Hotspot" and
with a WPA2 key set to "0123456789".
To change SSID or the key from the default you can use 

    snap set nm-wifi-hotspot ssid="My Cool SSID"
    snap set nm-wifi-hotspot psk="abcdefghijk"
