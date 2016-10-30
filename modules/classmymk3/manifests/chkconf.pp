class classmymk3::chkconf{
      case $classmymk3::params::oslevel {
      6: {
        exec {"chkconf":
          path =>  '/usr/sbin',
          command => 'chkconfig --add myservice',
          require => Class["classmymk3::config"],
             }
          }
      7:  {
          exec {"systemctl":
          path =>  '/usr/sbin',
          command => 'systemctl enable systemd-myservice.service',
          require => Class["classmymk3::config"],
               }
          } 
      0:  {
          }
