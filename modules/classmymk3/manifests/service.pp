class classmymk3::service {
      case $classmymk3::params::oslevel {
      6: {
         service { "myservice":
            ensure => running,
            hasstatus => true,
            hasrestart => true,
            enable => true,
            require => Class["classmymk3::config"],
                  }
           }
      7:  {
              service {  "systemd-myservice.service":
                ensure => running,
                hasstatus => true,
                hasrestart => true,
                enable => true,
                require => Class["classmymk3::config"],
                     }
          }
      0:  {
          }
      }
      }
