# This file was automatically generated on 2021-02-07 14:46:23 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure aaa authorization on device
Puppet::Resource::ResourceType3.new(
  'ios_aaa_authorization',
  [
    # Whether this aaa authorization should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # AAA Authorization service to use (a Enum["auth-proxy","commands","configuration","exec","network","reverse_access"])
    Puppet::Resource::Param(Any, 'authorization_service'),

    # Enable level - needed for "commands" authorization_service (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'commands_enable_level'),

    # The authorization list - named or default (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'authorization_list'),

    # Array of the server groups eg. ['tacacs+'], ['test1', 'test2'] (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'server_groups'),

    # Use local database. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'local'),

    # Succeed if user has authenticated. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'if_authenticated')
  ],
  [
    # Name. On resource this is a composite of the authorization_service (and enable level if "commands") and authorization_list name eg. "commands 15 default" or "exec authlist1" (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
