# This file was automatically generated on 2021-02-07 14:46:32 -0700.
# Use the 'puppet generate types' command to regenerate this file.

# Manages a Cisco Evpn Vni.
# 
# cisco_evpn_vni {'<vni>':
#   ..attributes..
# }
# 
# <vni> is the id of the vni.
# 
# Example:
#   $both =   ['1.2.3.4:55', '2:2', '55:33', 'auto']
#   $export = ['1.2.3.4:55', '2:2', '55:33', 'auto']
#   $import = ['1.2.3.4:55', '2:2', '55:33', 'auto']
# 
#   cisco_evpn_vni {'4096':
#     ensure                    => present,
#     route_distinguisher       => 'auto',
#     route_target_both         => $both,
#     route_target_export       => $export,
#     route_target_import       => $import,
#   }
Puppet::Resource::ResourceType3.new(
  'cisco_evpn_vni',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # VPN Route Distinguisher (RD). The RD is combined with the IPv4
    # or IPv6 prefix learned by the PE router to create a globally
    # unique address. Valid values are a String in one of the
    # route-distinguisher formats (ASN2:NN, ASN4:NN, or IPV4:NN);
    # the keyword 'auto', or the keyword 'default'.
    Puppet::Resource::Param(Any, 'route_distinguisher'),

    # Sets the route-target both extended communities. Valid
    # values are an Array or space-separated String of extended
    # communities, or the keyword 'default'.
    Puppet::Resource::Param(Any, 'route_target_both'),

    # Sets the route-target export extended communities. Valid
    # values are an Array or space-separated String of extended
    # communities, or the keyword 'default'.
    Puppet::Resource::Param(Any, 'route_target_export'),

    # Sets the route-target import extended communities. Valid
    # values are an Array or space-separated String of extended
    # communities, or the keyword 'default'.
    Puppet::Resource::Param(Any, 'route_target_import')
  ],
  [
    # ID of the Evpn Vni. Valid values are integer.
    Puppet::Resource::Param(Any, 'vni', true),

    # The specific backend to use for this `cisco_evpn_vni`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # cisco
    # : The Cisco provider for cisco evpn vni
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['vni']
  },
  true,
  false)
