# This file was automatically generated on 2021-02-07 14:46:48 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure VRF settings
Puppet::Resource::ResourceType3.new(
  'vrf',
  [
    # Whether this VRF should be present or absent on the target system. (a Enum[present, absent])
    # 
    # Valid values are `absent`, `present`.
    Puppet::Resource::Param(Enum['absent', 'present'], 'ensure'),

    # Address qualifier for the VRF, used to amintain uniqueness among identical routes (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'route_distinguisher'),

    # Address qualifier for the VRF, used to share routes between multiple VRFs (a Optional[Array[Tuple[Enum["export", "import", "both"], String]]])
    Puppet::Resource::Param(Any, 'route_targets'),

    # Associates a route map with the VRF (a Optional[String])
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'import_map')
  ],
  [
    # Name of VRF instance (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
