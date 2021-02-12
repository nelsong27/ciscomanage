cli configure terminal
cli vlan 200
cli name engineering
cli interface Ethernet1/2
cli switchport mode access
cli switchport access vlan 200
cli no shutdown
# cli copy running-config startup-config
