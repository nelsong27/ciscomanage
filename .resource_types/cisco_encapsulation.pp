# This file was automatically generated on 2021-02-07 14:46:31 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages a Global VNI Encapsulation profile(dot1q).
# 
# cisco_bridge_domain {"<encap>":
#   ..attributes..
# }
# 
# <encap> is the profile name of the encapsulation.
# 
# Example:
#   cisco_encapsulation {"cisco":
#     ensure          => present,
#     dot1q_map       => ['100-110', '5100-5110'],
#   }
Puppet::Resource::ResourceType3.new(
  'cisco_encapsulation',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The encapsulation profile dot1q vlan-to-vni mapping.
    # Valid values are the keyword 'default', or a mapping Array of the format:
    #  [dot1q_vlans, vnis]. Example:
    #     dot1q_map => ['100-110,150', '5000-5010,6000']
    Puppet::Resource::Param(Any, 'dot1q_map')
  ],
  [
    # Profile name of the Encapsulation. Valid values are alphanumeric
    # with special characters.
    Puppet::Resource::Param(Any, 'encap', true),

    # The specific backend to use for this `cisco_encapsulation`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : The new NXAPI provider.
    # 
    #   * Default for `operatingsystem` == `nexus`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['encap']
  },
  true,
  false)
