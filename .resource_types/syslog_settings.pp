# This file was automatically generated on 2021-02-07 14:46:47 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure global syslog settings
Puppet::Resource::ResourceType3.new(
  'syslog_settings',
  [
    # Enable or disable syslog logging [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable'),

    # Console logging severity level [0-7] or 'unset' (a Optional[Variant[Integer[0,7], Integer[-1, -1], Enum["unset"]]])
    Puppet::Resource::Param(Any, 'console'),

    # Logging facility to use (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'facility'),

    # Monitor (terminal) logging severity level [0-7] or 'unset' (a Optional[Variant[Integer[0,7], Integer[-1, -1], Enum["unset"]]])
    Puppet::Resource::Param(Any, 'monitor'),

    # Source interface to send syslog data from, e.g. "ethernet 2/1" (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'source_interface'),

    # The unit to log time values in [seconds|milliseconds] (a Optional[Enum["seconds", "milliseconds"]])
    Puppet::Resource::Param(Any, 'time_stamp_units'),

    # The VRF associated with source_interface (array of strings for multiple). (a Optional[Array[String]])
    Puppet::Resource::Param(Any, 'vrf'),

    # Logfile severity level [0-7] or 'unset' (a Optional[Variant[Integer[0,7], Integer[-1, -1], Enum["unset"]]])
    Puppet::Resource::Param(Any, 'logfile_severity_level'),

    # Logfile file name to use or 'unset' (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'logfile_name'),

    # Logging file maximum size (a Optional[Variant[Integer, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'logfile_size'),

    # Buffered log severity level [0-7] or 'unset' (a Optional[Variant[Integer[0,7], Integer[-1, -1], Enum["unset"]]])
    Puppet::Resource::Param(Any, 'buffered_severity_level'),

    # Logging buffer size (a Optional[Variant[Integer, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'buffered_size')
  ],
  [
    # Name, generally "default", not used to manage the resource (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
