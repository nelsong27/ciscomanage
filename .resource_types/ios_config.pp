# This file was automatically generated on 2021-02-07 14:46:27 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Execute an arbitary configuration against the cisco_ios device with or without a check for idempotency
Puppet::Resource::ResourceType3.new(
  'ios_config',
  [
    # The ios command to run (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'command')
  ],
  [
    # The friendly name for this ios command (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true),

    # The command line mode to be in, when executing the command (a Optional[Enum["CONF_T"]])
    Puppet::Resource::Param(Any, 'command_mode'),

    # Expected string, when running a regex against the 'show running-config' (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'idempotent_regex'),

    # Array of one or more options which control how the pattern can match. (a Optional[Array[Enum["ignorecase","extended","multiline","fixedencoding","noencoding"]]])
    Puppet::Resource::Param(Any, 'idempotent_regex_options'),

    # Negate the regex used with idempotent_regex (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'negate_idempotent_regex')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
