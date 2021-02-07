# This file was automatically generated on 2021-02-07 14:46:43 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure global RADIUS settings
Puppet::Resource::ResourceType3.new(
  'radius_global',
  [
    # Enable or disable RADIUS functionality [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable'),

    # Encryption key (plaintext or in hash form depending on key_format) (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'key'),

    # Encryption key format [0-7] (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'key_format'),

    # How many times to retransmit or 'unset' (Cisco Nexus only) (a Optional[Variant[Integer, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'retransmit_count'),

    # The source interface used for RADIUS packets (array of strings for multiple). (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'source_interface'),

    # Number of seconds before the timeout period ends or 'unset' (Cisco Nexus only) (a Optional[Variant[Integer, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'timeout'),

    # The VRF associated with source_interface (array of strings for multiple). (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'vrf')
  ],
  [
    # Resource name, not used to manage the device (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
