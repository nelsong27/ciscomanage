# This file was automatically generated on 2021-02-07 14:46:43 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Enable or disable RADIUS functionality
Puppet::Resource::ResourceType3.new(
  'radius',
  [
    # Enable or disable RADIUS functionality [true|false] (a Optional[Boolean])
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable')
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
