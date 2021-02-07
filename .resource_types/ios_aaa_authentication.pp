# This file was automatically generated on 2021-02-07 14:46:22 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure aaa authentication on device
Puppet::Resource::ResourceType3.new(
  'ios_aaa_authentication',
  [
    # Whether this aaa authentication should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Set authentication lists for - Login, Enable or dot1x (a Enum["arap","login","enable","dot1x","eou","onep","ppp","sgbp","suppress"])
    Puppet::Resource::Param(Any, 'authentication_list_set'),

    # The authentication list - named or default (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'authentication_list'),

    # Array of the cache groups eg. ['ldap', 'radius', tacacs+'], ['test1', 'test2'] (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'cache_groups'),

    # Array of the server groups eg. ['tacacs+'], `['test1', 'test2']` (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'server_groups'),

    # Use enable password for authentication. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable_password'),

    # Use line password for authentication. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'line'),

    # Use local username authentication. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'local'),

    # Use case-sensitive local username authentication. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'local_case'),

    # NO authentication. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'no_authentication'),

    # Switch authentication. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'switch_auth'),

    # Do not send access-request for users with null username. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'suppress_null_username')
  ],
  [
    # Name. On resource this is a composite of the authentication_list_set and authentication_list name eg. "login default" (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
