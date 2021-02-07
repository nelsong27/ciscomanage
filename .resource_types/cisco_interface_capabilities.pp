# This file was automatically generated on 2021-02-07 14:46:33 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Interface capabilities utility. This is a test-only resource.
Puppet::Resource::ResourceType3.new(
  'cisco_interface_capabilities',
  [
    # This is a getter-only property used by the test facility to determine interface capabilities.
    Puppet::Resource::Param(Any, 'capabilities')
  ],
  [
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `cisco_interface_capabilities`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : * Default for `operatingsystem` == `ios_xr, nexus`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
