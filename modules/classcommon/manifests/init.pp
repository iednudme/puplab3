class classcommon (
                  $string1 = hiera("key1"),
                  $userlist = hiera("userlist"),
                  )
                  {
                  file { "/tmp/etc/":
                      ensure => 'directory',
                      }
                  file {"/tmp/etc/commonconftest":
                       mode => 440,
                       source => "puppet://vm01/common_conf/commonconftest";
                       }
                 notify {
                       "classcommon message":
                       }
                   }
