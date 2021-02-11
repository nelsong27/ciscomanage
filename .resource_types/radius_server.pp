# This file was automatically generated on 2021-02-07 14:46:43 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure a RADIUS server
Puppet::Resource::ResourceType3.new(
  'radius_server',
  [
    # Ensure the radius_server exists. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # The hostname or address of the RADIUS server (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'hostname'),

    # Port number to use for authentication (a Optional[Integer[1, 65535]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'auth_port'),

    # Port number to use for accounting (a Optional[Integer[1, 65535]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'acct_port'),

    # Encryption key (plaintext or in hash form depending on key_format) (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'key'),

    # Encryption key format [0-7] (a Optional[Variant[Integer, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'key_format'),

    # Server group associated with this server (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'group'),

    # Number of minutes to ignore an unresponsive server (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'deadtime'),

    # Number of seconds before the timeout period ends (a Optional[Variant[Integer, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'timeout'),

    # VRF to send syslog data from, e.g. "management" (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'vrf'),

    # Source interface to send syslog data from, e.g. "ethernet 2/1" (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_interface'),

    # How many times to retransmit (a Optional[Variant[Integer, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'retransmit_count'),

    # Enable this server for accounting only (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'accounting_only'),

    # Enable this server for authentication only (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'authentication_only')
  ],
  [
    # The name of the RADIUS server (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
