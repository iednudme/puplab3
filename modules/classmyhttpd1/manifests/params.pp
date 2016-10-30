class classmyhttpd1::params  (
                  $homepagetitle = hiera("homepagetitle"),
                )
     {
     case $operatingsystemmajrelease {
     6 : {  $oslevel = 6 }
     7 : {  $oslevel = 7 }
     default : { $oslevel = 0 }
       }
        }
