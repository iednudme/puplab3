class classamy (
               $string1 = hiera("key1"),
               $string2 = hiera("key2"),
               $array1 = hiera("file1"),
               $users = hiera("userlist"),
               $haha = hiera("haha"),
            )

               { 
               file { $array1:
                      ensure => present,
                      content => "hiera test ",
                      }
               user { $users:
                      ensure => present,
                    }
               file { "/tmp/templatetest":
                       ensure => present,
                       content => template("classamy/templatetest.erb"),
                       }

               notify {
               #   "class amy run , this is $::clientcert":
                   "class amy run , this is $array1[0]":
               }
               }
