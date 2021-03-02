cli configure terminal
cli vlan 300
cli name finance
cli interface Ethernet1/3
cli switchport mode access
cli switchport access vlan 300
cli no shutdown
cli copy running-config startup-config
