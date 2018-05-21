# Install packages using Puppet

package { 'vim':
         ensure => 'present',
        }

package { 'curl':
         ensure => 'present',
        }

package { 'git':
         ensure => 'present',
        }
