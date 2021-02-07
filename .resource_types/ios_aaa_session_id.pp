# This file was automatically generated on 2021-02-07 14:46:23 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure aaa session id on device
Puppet::Resource::ResourceType3.new(
  'ios_aaa_session_id',
  [
    # Type of aaa session id - common or unique (a Enum["common","unique"])
    Puppet::Resource::Param(Any, 'session_id_type')
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
