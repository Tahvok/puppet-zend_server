# Class apache::redhat
#
# Apache resources specific for RedHat
#
class zend_server::redhat {
  apache::dotconf { '00-NameVirtualHost':
    content => template('apache/00-NameVirtualHost.conf.erb'),
  }
}
