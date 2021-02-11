# This file was automatically generated on 2021-02-07 14:46:45 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Enable or disable notification groups and events
Puppet::Resource::ResourceType3.new(
  'snmp_notification',
  [
    # Enable or disable the notification [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable')
  ],
  [
    # The notification name or "all" for all notifications (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
