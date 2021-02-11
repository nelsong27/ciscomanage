# This file was automatically generated on 2021-02-07 14:46:40 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the VTP (VLAN Trunking Protocol) configuration of a Cisco device.
# 
# cisco_vtp { <title>:
#   ..attributes..
# }
# 
# There can only be one instance of the cisco_vtp.
# Example:
#   cisco_vtp { default:
#     ensure   => present,
#     domain   => 'mydomain',
#     password => 'xxxxx',
#     version  => 2,
#     filename => 'bootflash:/vlan.dat',
#   }
Puppet::Resource::ResourceType3.new(
  'cisco_vtp',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # VTP administrative domain. Valid values are string. Mandatory parameter.
    Puppet::Resource::Param(Any, 'domain'),

    # Version for the VTP domain. Valid values are integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'version'),

    # VTP file name. Valid values are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'filename'),

    # Password for the VTP domain. Valid values are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'password')
  ],
  [
    # Instance of vtp, only allow the value 'default'
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `cisco_vtp`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : The Cisco provider.
    # 
    #   * Default for `operatingsystem` == `nexus`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
