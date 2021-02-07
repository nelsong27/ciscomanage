# This file was automatically generated on 2021-02-07 14:46:29 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the Cisco Bfd Global configuration resource.
# cisco_bfd_global {'default':
#   ..attributes..
# }
# 'default' is only acceptable name for this global config object.
# Example:
# cisco_bfd_global { 'default':
#   ensure                => 'present',
#   echo_interface        => 'loopback10',
#   echo_rx_interval      => 300,
#   fabricpath_interval   => ['750', '350', '45'],
#   fabricpath_slow_timer => 15000,
#   fabricpath_vlan       => 100,
#   interval              => ['100', '100', '25'],
#   ipv4_echo_rx_interval => 100,
#   ipv4_interval         => ['200', '200', '50'],
#   ipv4_slow_timer       => 10000,
#   ipv6_echo_rx_interval => 200,
#   ipv6_interval         => ['500', '500', '30'],
#   ipv6_slow_timer       => 25000,
#   slow_timer            => 5000,
#   startup_timer         => 25,
# }
Puppet::Resource::ResourceType3.new(
  'cisco_bfd_global',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Loopback interface used for echo frames. Valid values are
    # string (e.g. 'loopback42'), or keyword 'default'.
    Puppet::Resource::Param(Any, 'echo_interface'),

    # Echo receive interval in msec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'echo_rx_interval'),

    # Valid values are an array of  [fabricpath_interval, fabricpath_min_rx, fabricpath_multiplier]
    # or keyword 'default'
    Puppet::Resource::Param(Any, 'fabricpath_interval'),

    # Fabricpath slow rate timer in msec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'fabricpath_slow_timer'),

    # Fabricpath control vlan. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'fabricpath_vlan'),

    # Valid values are an array of  [interval, min_rx, multiplier]
    # or keyword 'default'
    Puppet::Resource::Param(Any, 'interval'),

    # Ipv4 session echo receive interval in msec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_echo_rx_interval'),

    # Valid values are an array of  [ipv4_interval, ipv4_min_rx, ipv4_multiplier]
    # or keyword 'default'
    Puppet::Resource::Param(Any, 'ipv4_interval'),

    # Ipv4 session slow rate timer in msec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv4_slow_timer'),

    # Ipv6 session echo receive interval in msec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv6_echo_rx_interval'),

    # Valid values are an array of  [ipv6_interval, ipv6_min_rx, ipv6_multiplier]
    # or keyword 'default'
    Puppet::Resource::Param(Any, 'ipv6_interval'),

    # Ipv6 session slow rate timer in msec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'ipv6_slow_timer'),

    # Slow rate timer in msec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'slow_timer'),

    # Delayed startup timer in sec. Valid values are
    # integer, keyword 'default'.
    Puppet::Resource::Param(Any, 'startup_timer')
  ],
  [
    # The name of the bfd_global instance. Valid values are 'default' only
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `cisco_bfd_global`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : The Cisco bfd_global provider.
    # 
    #   * Default for `operatingsystem` == `nexus`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
