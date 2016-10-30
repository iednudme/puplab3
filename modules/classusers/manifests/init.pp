class classusers (
            $userlist = hiera_array("userlist"),
            )
            
            {

            notify {
                   "classusers  , this is $userlist":
                   }
                   }
