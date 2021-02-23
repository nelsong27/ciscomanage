cli configure terminal
cli vlan 200
cli name engineering
cli interface Ethernet1/2
cli switchport mode access
cli switchport access vlan 200
cli no shutdown
<<<<<<< HEAD
# cli copy running-config startup-config
=======
cli copy running-config startup-config
>>>>>>> f119f64f3fd205c107c74591d255c5d085fcadd5
