# This file was automatically generated on 2021-02-07 14:46:47 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure a remote syslog server for logging
Puppet::Resource::ResourceType3.new(
  'syslog_server',
  [
    # Whether this syslog server should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Logging facility to use (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'facility'),

    # Port number of remote syslog server (a Optional[Integer[1, 65535]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'port'),

    # Syslog severity level to log (a Optional[Integer[0, 7]])
    # 
    # Values can match `/^-?\d+$/`.
    Puppet::Resource::Param(Pattern[/^-?\d+$/], 'severity_level'),

    # VRF to send syslog data from, e.g. "management" (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'vrf'),

    # Source interface to send syslog data from, e.g. "ethernet 2/1" (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'source_interface')
  ],
  [
    # Hostname or address of the server (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
