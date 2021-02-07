# This file was automatically generated on 2021-02-07 14:46:49 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# This is a type used for testing the Resource API Gem
Puppet::Resource::ResourceType3.new(
  'resource_api_test',
  [
    # Whether this resource should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure')
  ],
  [
    # The name of the resource you want to manage. (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
