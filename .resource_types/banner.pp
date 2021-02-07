# This file was automatically generated on 2021-02-07 14:46:40 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Set various banner on a device.
Puppet::Resource::ResourceType3.new(
  'banner',
  [
    # The MOTD banner (a Optional[Variant[String, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'motd'),

    # The Login banner (a Optional[Variant[String, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'login'),

    # The EXEC banner (a Optional[Variant[String, Enum["unset"]]])
    Puppet::Resource::Param(Any, 'exec')
  ],
  [
    # The banner resource. The name stays as "default" (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
