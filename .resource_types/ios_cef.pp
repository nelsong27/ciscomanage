# This file was automatically generated on 2021-02-07 14:46:27 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Implementation and Management of CEF settings
Puppet::Resource::ResourceType3.new(
  'ios_cef',
  [
    # Distributed Cisco Express Forwarding (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'distributed'),

    # Trigger layer 2 address resolution directly from CEF (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'optimize_resolution'),

    # Per-destination load sharing algorithm selection (a Optional[Variant[Enum['original', 'tunnel', 'universal'], Tuple[Enum['tunnel', 'universal'], String], Tuple[Enum['include-ports'], Enum['destination', 'source']], Tuple[Enum['include-ports'], Enum['destination', 'source'], String]]])
    Puppet::Resource::Param(Any, 'load_sharing')
  ],
  [
    # Resource name, not used to manage the device (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
