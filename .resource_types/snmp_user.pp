# This file was automatically generated on 2021-02-07 14:46:46 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Set the SNMP contact name
Puppet::Resource::ResourceType3.new(
  'snmp_user',
  [
    # Whether the SNMP User should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # SNMP version [v1|v2|v2c|v3] (a Optional[Enum["v1", "v2", "v2c", "v3"]])
    Puppet::Resource::Param(Any, 'version'),

    # A list of roles associated with this SNMP user (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'roles'),

    # Authentication mode [md5|sha] (a Optional[Enum["md5", "sha"]])
    Puppet::Resource::Param(Any, 'auth'),

    # Cleartext password for the user (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'password'),

    # Privacy encryption method [aes128|aes192|aes256|des|3des] (a Optional[Enum["aes128", "aes192", "aes256", "des", "3des"]])
    Puppet::Resource::Param(Any, 'privacy'),

    # Private key in hexadecimal string (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'private_key'),

    # If true, password needs to be a hexadecimal value [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'localized_key'),

    # If true, message encryption is enforced [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enforce_privacy'),

    # Necessary if the SNMP engine is encrypting data (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'engine_id')
  ],
  [
    # Composite ID of username / version (if applicable) (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
