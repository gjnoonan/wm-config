import XMonad
 
main = xmonad defaultConfig
         { terminal = "urxvtc"
				 , workspaces = ["1-main","2-web","3-chat" "4:dev"] ++ map show [5..9]
         }

