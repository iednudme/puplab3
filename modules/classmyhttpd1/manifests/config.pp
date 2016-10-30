class classmyhttpd1::config {



      file {"/var/www/html/index.html": 
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0755,
        content =>  template("classmyhttpd1/index.html.erb"),
        notify => Class["classmyhttpd1::service"],
             }
     
      #notify { "$classmyhttpd1::params::homepagetitle" :
      #}

      case $classmyhttpd1::params::oslevel {

      6: {

         notify {
                 "this is 6":
                }

          }

      7:  {

         notify {
                 "this is 7":
                }
          }

      0:  {
          }

           }
         }
