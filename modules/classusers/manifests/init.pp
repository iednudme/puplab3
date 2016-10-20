class classusers (
            $user1 = hiera("user1"),
            )
            {
            notify {
                   "class users , this is $user1":
                   }
                   }
