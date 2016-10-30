class classmyhttpd1::service {

       service { "httpd":
            ensure => running,
            hasstatus => true,
            hasrestart => true,
            enable => true,
            require => Class["classmyhttpd1::config"],
                  }
      case $classmyhttpd1::params::oslevel {
      6: {
         service { "iptables":
            ensure => stopped,
                  }
           }
      7:  {
          service {  "firewalld.service":
             ensure => stopped,
                     }
          }
      0:  {
          }
      }
      }
