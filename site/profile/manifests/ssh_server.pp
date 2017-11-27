class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCunfXfnEKa0+EW17dbuZTk3bcLiqJxb4l8sVyvkBT+QMxGgenHKMu9d9xv1WEt3EqRb4kvCHz5dZgd1o05CHNz8mO8hkuJP9UPdZJfvtL9O2NjF+z/cBe+DHQZENA2DYfe8jJWjgIic/B80RZoQzOfi37HDGfYJj3DQbH3lwkdOlcOUMgobc/kwPggZl9GGWX63it8lODXq411luF5tLzZrX0fJiITj3U62eOgBIjGMeGZ4nvw19nfLXH/cvWsZqqyoodRpJ1SoFe722cxwcUIfCYrdkwC5+uidLnfT6/YkyqUGhqfxWULG2UgS2Jb6bLFnOGTFPBHIlU0ERpEl4z9',
  }  
}
