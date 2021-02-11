# This file was automatically generated on 2021-02-07 14:46:28 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configures Global snmp settings.
Puppet::Resource::ResourceType3.new(
  'ios_snmp_global',
  [
    # Assigns an interface for the source address of all traps. Setting it to 'unset' will revert it to the default value.
    # 
    # Examples:
    # ```
    # trap_source => 'GigabitEthernet0/3'
    # ```
    # ```
    # trap_source => 'unset'
    # ```
    #  (a Optional[Variant[String, Enum['unset']]])
    Puppet::Resource::Param(Any, 'trap_source'),

    # Enables use of the SNMP reload command. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'system_shutdown'),

    # Sets text for the mib object sysContact. Setting it to 'unset' will revert it to the default value.
    # 
    # Examples:
    # ```
    # contact => 'SNMP_TEST'
    # ```
    # ```
    # contact => 'unset'
    # ```
    #  (a Optional[Variant[String, Enum['unset']]])
    Puppet::Resource::Param(Any, 'contact'),

    # When set this value enables the SNMP manager. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'manager'),

    # Modifies the SNMP manager timeout parameter.
    # 
    # Examples:
    # ```
    # manager_session_timeout => 20
    # ```
    # ```
    # manager_session_timeout => unset
    # ```
    #  (a Optional[Variant[Integer, Enum['unset']]])
    Puppet::Resource::Param(Any, 'manager_session_timeout'),

    # Enables IF-MIB ifindex persistence. (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'ifmib_ifindex_persist')
  ],
  [
    # ID of the snmp global config. Valid values are default. (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
