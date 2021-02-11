# This file was automatically generated on 2021-02-07 14:46:32 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the Cisco Hsrp Global configuration resource.
# cisco_hsrp_global {'default':
#   ..attributes..
# }
# 'default' is only acceptable name for this global config object.
# 
# Example:
# cisco_hsrp_global { 'default':
#   bfd_all_intf           => true,
#   extended_hold          => 200,
# }
Puppet::Resource::ResourceType3.new(
  'cisco_hsrp_global',
  [
    # Enables BFD for all HSRP sessions on all interfaces
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'bfd_all_intf'),

    # Configures extended hold on global timers. Valid values
    # are integer, keyword 'default'
    Puppet::Resource::Param(Any, 'extended_hold')
  ],
  [
    # ID of the hsrp global config. Valid values are default.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `cisco_hsrp_global`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : New Cisco provider for Hsrp Global
    # 
    #   * Default for `operatingsystem` == `nexus`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
