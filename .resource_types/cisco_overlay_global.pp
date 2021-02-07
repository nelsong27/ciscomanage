# This file was automatically generated on 2021-02-07 14:46:36 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the global overlay configuration of a Cisco device.
# 
# ~~~puppet
# cisco_overlay_global { <title>:
#   ..attributes..
# }
# ~~~
# 
# There can only be one instance of the cisco_overlay_global.
# Example:
# 
# ~~~puppet
#   cisco_overlay_global { 'default':
#     dup_host_ip_addr_detection_host_moves     => 200,
#     dup_host_ip_addr_detection_timeout        => 20,
#     anycast_gateway_mac                       => '1223.3445.5668',
#     dup_host_mac_detection_host_moves         => 100,
#     dup_host_mac_detection_timeout            => 10,
#   }
# ~~~
Puppet::Resource::ResourceType3.new(
  'cisco_overlay_global',
  [
    # The number of host moves allowed in n seconds. Valid values are Integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'dup_host_ip_addr_detection_host_moves'),

    # The duplicate detection timeout in seconds for the number of host moves.
    # Valid values are Integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'dup_host_ip_addr_detection_timeout'),

    # Distributed gateway virtual MAC address. Valid values are string, keyword 'default'.
    Puppet::Resource::Param(Any, 'anycast_gateway_mac'),

    # The number of host moves allowed in n seconds. Valid values are Integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'dup_host_mac_detection_host_moves'),

    # The duplicate detection timeout in seconds for the number of host moves.
    # Valid values are Integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'dup_host_mac_detection_timeout')
  ],
  [
    # Instance of overlay_global, only allow the value 'default'
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `cisco_overlay_global`
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
