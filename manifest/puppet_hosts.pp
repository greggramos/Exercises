#Change Hostname and Timezone

host { 'bpx.server.local':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4'],
  ip           => '10.10.7.78',
  target       => '/etc/hosts',
}

class {'timezone':
        timezone => 'PHT',
        }
