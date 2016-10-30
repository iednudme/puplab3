class classmymk::chkconf{
      exec {"chkconf":
          path =>  '/usr/sbin',
          command => 'chkconfig --add myservice',
          require => Class["classmymk::config"],
          }
          }
