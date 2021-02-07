# This file was automatically generated on 2021-02-07 14:46:36 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the Cisco PortChannel Global configuration resource.
# cisco_portchannel_global {'default':
#   ..attributes..
# }
# 'default' is only acceptable name for this global config object.
# Example:
# cisco_portchannel_global { 'default':
#   asymmetric                     => 'true',
#   bundle_hash                    => 'ip',
#   bundle_select                  => 'dst',
#   concatenation                  => 'false',
#   hash_distribution              => 'adaptive',
#   hash_poly                      => 'CRC10a',
#   load_defer                     => '1000',
#   resilient                      => 'true',
#   rotate                         => '10',
#   symmetry                       => 'true',
# }
Puppet::Resource::ResourceType3.new(
  'cisco_portchannel_global',
  [
    # Asymmetric hash.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'asymmetric'),

    # Bundle hash
    # 
    # Valid values are `default`, `ip`, `ip-l4port`, `ip-l4port-vlan`, `ip-vlan`, `l4port`, `mac`, `port`, `ip-only`, `port-only`, `ip-gre`.
    Puppet::Resource::Param(Enum['default', 'ip', 'ip-l4port', 'ip-l4port-vlan', 'ip-vlan', 'l4port', 'mac', 'port', 'ip-only', 'port-only', 'ip-gre'], 'bundle_hash'),

    # Bundle select
    # 
    # Valid values are `default`, `src`, `dst`, `src-dst`.
    Puppet::Resource::Param(Enum['default', 'src', 'dst', 'src-dst'], 'bundle_select'),

    # Enable/disable concatenation
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'concatenation'),

    # port-channel hash-distribution.
    # 
    # Valid values are `adaptive`, `fixed`, `default`.
    Puppet::Resource::Param(Enum['adaptive', 'fixed', 'default'], 'hash_distribution'),

    # port-channel hash-polynomial.
    # 
    # Valid values are `CRC10a`, `CRC10b`, `CRC10c`, `CRC10d`.
    Puppet::Resource::Param(Enum['CRC10a', 'CRC10b', 'CRC10c', 'CRC10d'], 'hash_poly'),

    # Load defer time interval
    Puppet::Resource::Param(Any, 'load_defer'),

    # Resilient mode.
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'resilient'),

    # Offset the hash-input
    Puppet::Resource::Param(Any, 'rotate'),

    # Symmetric load balancing
    # 
    # Valid values are `true`, `false`, `default`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'default']], 'symmetry')
  ],
  [
    # ID of the portchannel global config. Valid values are default.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `cisco_portchannel_global`
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
