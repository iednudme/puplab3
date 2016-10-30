class classmymk::service {
    service { "myservice":
        ensure => running,
        hasstatus => true,
        hasrestart => true,
        enable => true,
        require => Class["classmymk::config"],
        }
      }
