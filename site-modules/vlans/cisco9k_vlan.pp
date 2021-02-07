cisco_vlan {'300':
    ensure    => 'present',
    vlan      => 300,
    shutdown  => false,
    state     => 'active',
    vlan_name => 'product-vlan-300'
}
