# This file was automatically generated on 2021-02-07 14:46:27 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages settings related to the IP
Puppet::Resource::ResourceType3.new(
  'ios_ip',
  [
    # Whether to Enable IP routing (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'routing')
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
