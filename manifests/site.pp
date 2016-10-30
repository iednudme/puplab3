node default { 
#    file { 
#    "/tmp/$fqdn.txt": content => "Hello, First puppet test! $string", 
#    } 
#    
#    notify {
#    "running on node $fqdn \n ": 
#    }
   }


node vm14 {
      hiera_include('classes')
      }


node vm21 {
      hiera_include('classes')
      }

node vm24 {
      hiera_include('classes')
      }

import 'nodes/vm23.pp'
import 'nodes/vm11.pp'

