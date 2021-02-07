# This file was automatically generated on 2021-02-07 14:46:32 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages a Cisco Evpn stormcontrol level.
# 
# cisco_evpn_stormcontrol {'<packet_type>':
#   ..attributes..
# }
# 
# <packet_type> is the type of packet like broadcast, unicast or multicast.
# 
# Example:
#   cisco_evpn_stormcontrol {'broadcast':
#     ensure      => present,
#     level       => '50',
#   }
Puppet::Resource::ResourceType3.new(
  'cisco_evpn_stormcontrol',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Stormcontrol level. Valid values are Integer.
    Puppet::Resource::Param(Any, 'level')
  ],
  [
    # The packet type to apply stormcontol on. Valid values are 'unicast',
    # 'multicast' or 'broadcast'
    Puppet::Resource::Param(Any, 'packet_type', true),

    # The specific backend to use for this `cisco_evpn_stormcontrol`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : The Cisco provider for cisco evpn stormcontrol
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['packet_type']
  },
  true,
  false)
