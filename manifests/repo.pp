# Zend Server repository
class zend_server::repo {
  if $::osfamily == 'RedHat' and $::operatingsystem !~ /Fedora|Amazon/ {

    yumrepo { 'zend-server':
      name     => 'Zend Server',
      baseurl  => 'http://repos.zend.com/zend-server/6.3/rpm/$basearch',
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => 'http://repos.zend.com/zend.key',
    }

    yumrepo { 'zend-server_noarch':
      name     => 'Zend Server - noarch',
      baseurl  => 'http://repos.zend.com/zend-server/6.3/rpm/noarch',
      enabled  => 1,
      gpgcheck => 1,
      gpgkey   => 'http://repos.zend.com/zend.key',
    }

  } else {
    notice ("Your operating system ${::operatingsystem} will not have the
      Zend Server repository applied")
  }
}
