#Create User using Puppet

user {'monitor':
        home => '/home/monitor',
        shell => '/bin/bash',
        comment => 'User for Monitoring',
        }
