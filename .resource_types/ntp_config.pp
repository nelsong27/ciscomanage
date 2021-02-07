# This file was automatically generated on 2021-02-07 14:46:42 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Specify NTP config
Puppet::Resource::ResourceType3.new(
  'ntp_config',
  [
    # NTP authentication enabled [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'authenticate'),

    # The source interface for the NTP system (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_interface'),

    # Array of global trusted-keys. Contents can be a String or Integers (a Optional[Array[Variant[Integer, String]]])
    Puppet::Resource::Param(Any, 'trusted_key')
  ],
  [
    # Config name, default to "default" as the NTP config is global rather than instance based (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
