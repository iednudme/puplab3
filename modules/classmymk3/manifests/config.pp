class classmymk3::config {

      file {"/home/myservicerun.sh":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0700,
        source => "puppet:///common_conf/myservicerun.sh",
        notify => Class["classmymk3::service"],
             }


      file {"/tmp/mymkconf": 
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0755,
        content =>  template("classmymk3/mymkconf.erb"),
             }
     
      exec {"touch test":
          path =>  '/bin',
          command => 'touch /tmp/touchtest',
          }

      case $classmymk3::params::oslevel {

      6: {

        file {"/etc/init.d/myservice":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0755,
        source => "puppet:///common_conf/myservice",
             }

         notify {
                 "class mymk3 run , this is 6":
                }

          }

      7:  {

          file {"/home/myservice":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0755,
        source => "puppet:///common_conf/myservice",
             }

         file {"/usr/lib/systemd/system/systemd-myservice.service":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0755,
        source => "puppet:///common_conf/systemd-myservice.service",
             }
         notify {
                 "class mymk3 run , this is 7":
                }

          }

      0:  {
          }

           }
         }
