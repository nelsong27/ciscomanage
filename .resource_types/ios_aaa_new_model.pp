# This file was automatically generated on 2021-02-07 14:46:23 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Enable aaa new model on device
Puppet::Resource::ResourceType3.new(
  'ios_aaa_new_model',
  [
    # Enable or disable aaa new model (a Boolean)
    # 
    # Valid values are `true` (also called `true, true`), `false` (also called `false, false`).
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'true', 'true', 'false', 'false', 'false']], 'enable')
  ],
  [
    # The name stays as "default" (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
