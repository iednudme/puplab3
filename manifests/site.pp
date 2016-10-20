node default { 
#    file { 
#    "/tmp/$fqdn.txt": content => "Hello, First puppet test! $string", 
#    } 
#    
    notify {
    "running on node $fqdn   g": 
    }
   }

node vm14 {
      hiera_include('classes')
      }
import 'nodes/vm23.pp'
import 'nodes/vm11.pp'

