# This file was automatically generated on 2021-02-07 14:46:42 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# NTP Authentication keys
Puppet::Resource::ResourceType3.new(
  'ntp_auth_key',
  [
    # Whether this NTP auth key should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Algorithm eg. md5 (a Optional[Enum["md5","sha1","sha256"]])
    Puppet::Resource::Param(Any, 'algorithm'),

    # Password mode [0 (plain) | 7 (encrypted)] (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'mode'),

    # Password text (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'password')
  ],
  [
    # Authentication key ID (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
