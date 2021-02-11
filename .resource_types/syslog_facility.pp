# This file was automatically generated on 2021-02-07 14:46:46 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure severity level for syslog facilities
Puppet::Resource::ResourceType3.new(
  'syslog_facility',
  [
    # Whether this syslog facility configuration should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Syslog severity level to log (a Optional[Integer[0, 7]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'level')
  ],
  [
    # Facility (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
