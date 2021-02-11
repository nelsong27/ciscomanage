# This file was automatically generated on 2021-02-07 14:46:48 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure a TACACS server
Puppet::Resource::ResourceType3.new(
  'tacacs_server',
  [
    # Whether this TACACS server should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # The hostname or ipv4 address of the TACACS server (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'hostname'),

    # Enable or disable session multiplexing [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'single_connection'),

    # Specifies the VRF instance used to communicate with the server (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'vrf'),

    # The port of the TACACS server (a Optional[Integer[1, 65535]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'port'),

    # Encryption key (plaintext or in hash form depending on key_format) (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'key'),

    # Encryption key format [0-7] (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'key_format'),

    # Number of seconds before the timeout period ends (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'timeout'),

    # Server group associated with this server (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'group')
  ],
  [
    # Name of the TACACS server (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
