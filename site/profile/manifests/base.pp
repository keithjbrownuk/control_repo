class profile::base {
  user {'admin':
    ensure => present,
  }
  include epel-release
  include profile::ssh_server
}
