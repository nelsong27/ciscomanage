# This file was automatically generated on 2021-02-07 14:46:22 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure aaa accounting on device
Puppet::Resource::ResourceType3.new(
  'ios_aaa_accounting',
  [
    # Whether this aaa accounting should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # AAA Accounting service to use (a Enum["auth-proxy","commands","connection","dot1x","exec","identity","network","onep","resource","system","update"])
    Puppet::Resource::Param(Any, 'accounting_service'),

    # Enable level - needed for "commands" accounting_service (a Optional[Integer])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'commands_enable_level'),

    # The accounting list - named or default (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'accounting_list'),

    # The status of the accounting (a Optional[Enum["none","start-stop","stop-only"]])
    Puppet::Resource::Param(Any, 'accounting_status'),

    # Array of the server groups eg. `['tacacs+'], ['test1', 'test2']` (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'server_groups'),

    # Only send accounting update records when we have new acct info. (For periodic use "update_newinfo_periodic") - use with "update" accounting_service. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'update_newinfo'),

    # Periodic intervals to send accounting update records(in minutes) when we have new acct info. (For non-periodic use "update_newinfo")  - use with "update" accounting_service. (a Optional[Integer[1, 2147483647]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'update_newinfo_periodic'),

    # Periodic intervals to send accounting update records(in minutes) (For new acct info only use "update_newinfo_periodic") - use with "update" accounting_service. (a Optional[Integer[1, 2147483647]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'update_periodic')
  ],
  [
    # Name. On resource this is a composite of the authorization_service (and enable level if "commands")
    # and authorization_list name eg. "commands 15 default" or "exec authlist1" - or "update" type eg. "update newinfo"
    # (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
