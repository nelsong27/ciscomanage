# This file was automatically generated on 2021-02-07 14:46:31 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages a Cisco Evpn Multisite.
# 
# cisco_evpn_multisite {'<multisite>':
#   ..attributes..
# }
# 
# <multisite> is the Evpn Multisite Site-Id.
# 
# Example:
#   cisco_evpn_multisite {'100':
#     ensure              => present,
#     delay_restore       => '500',
#   }
Puppet::Resource::ResourceType3.new(
  'cisco_evpn_multisite',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Delay restore time in seconds. Valid values are Integer or default.
    Puppet::Resource::Param(Any, 'delay_restore')
  ],
  [
    # The Evpn Multisite id. Valid values are integer.
    Puppet::Resource::Param(Any, 'multisite', true),

    # The specific backend to use for this `cisco_evpn_multisite`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : The Cisco provider for cisco evpn multisite
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['multisite']
  },
  true,
  false)
