class classmymk::config {
      file {"/home/myservicerun.sh":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0700,
        source => "puppet:///common_conf/myservicerun.sh",
        notify => Class["classmymk::service"],
             }

      file {"/etc/init.d/myservice":
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0755,
        source => "puppet:///common_conf/myservice",
             }

      file {"/tmp/mymkconf": 
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0755,
        content =>  template("classmymk/mymkconf.erb"),
             }
     
      exec {"touch test":
          path =>  '/bin',
          command => 'touch /tmp/touchtest',
          }
          }
