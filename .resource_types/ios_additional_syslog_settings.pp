# This file was automatically generated on 2021-02-07 14:46:24 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Configure global syslog settings
Puppet::Resource::ResourceType3.new(
  'ios_additional_syslog_settings',
  [
    # Set the syslog server logging level, can be set to a severity level of [0-7] or 'unset'.
    # 
    # Examples:
    # 
    # ```Puppet
    #   trap => 3,
    # ```
    # 
    # ```Puppet
    #   trap => 'unset',
    # ```
    #  (a Optional[Variant[Integer[0,7], Enum["unset"]]])
    Puppet::Resource::Param(Any, 'trap'),

    # Sets an origin-id to be added to all syslog messages, can be set to a default value taken from the switch itself or a designated one word string.
    # 
    # Examples:
    # 
    # ```Puppet
    #   origin_id => 'ipv6',
    # ```
    # 
    # ```Puppet
    #   origin_id => ['string', 'Main'],
    # ```
    # 
    # ```Puppet
    #   origin_id => 'unset',
    # ```
    #  (a Optional[Variant[Enum['hostname', 'ip', 'ipv6', unset], Tuple[Enum['string'], String]]])
    Puppet::Resource::Param(Any, 'origin_id')
  ],
  [
    # Name, generally "default", not used to manage the resource (a String)
    # 
    # Values can match `//`.
    Puppet::Resource::Param(Pattern[//], 'name', true)
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
