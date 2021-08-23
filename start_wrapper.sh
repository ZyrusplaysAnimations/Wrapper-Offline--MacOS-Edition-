#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
echo "$BASEDIR"

cd ..
which sh
clear
echo = = = = = = = = = = = = 
echo What do you want to do?
echo = = = = = = = = = = = = 
echo 1 - Install [do this once]
echo 2 - Start Wrapper Offline 
echo 3 - watch benson on youtube 



          while true; do
            read -p "Selection: " sel2
            case $sel2 in
                [1]* )
                clear
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
                echo Downloading Wrapper Offline HTTP Server. Please type your password on the menu.
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
                sudo npm install http-server -g &
                sleep 15
                clear


                echo = = = = = = = = = = = = 
                echo Giving correct permissions
                echo = = = = = = = = = = = = 
                chmod 777 $BASEDIR/start_wrapper.sh
                sleep 3
                

                echo = = = = = = = = = = = = 
                echo What do you want to do?
                echo = = = = = = = = = = = = 
                echo 1 - Install HTTP-Server [you already did that or you was to slow]
                echo 2 - Start Wrapper Offline 
                

                ;;
                [3]* )
                clear
                
                echo this is how you watch benson on youtube
                open https://www.youtube.com/c/watchbenson
                

                echo watch benson on you tub
                
             

                
                
              



               ;;
                [2]* )
                clear
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                echo Starting Wrapper Offline  
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                open -a Terminal.app $BASEDIR/utilities/http.sh
                
                open -a Terminal.app $BASEDIR/utilities/npm.sh

               




       
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                echo Type Website to go to Wrapper offline website.
                echo Type close to close wrapper. Type server to open wrapper asset server 
                echo Wait a second! before you go any futher, adobe flash has been retired on a browser you are using!
                echo to get that back, type puffin and it should install it for you. you only need to do this once.
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

         ;;
                [website]* )
                clear
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                echo Opening Wrapper: Offline using your default browser
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                open http://localhost:4343/
                

                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                echo Type website to go to Wrapper offline website. Type close to close wrapper.
                echo Type server to go to the server assets
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

          ;;
                [puffin]* )
                clear
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                echo Installing puffin browser on your MacOS system...
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                open -a Terminal.app $BASEDIR/utilities/PuffinInstaller_9.0.0.368.dmg
                

                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                echo if the installation is done for Puffin Browser, you can type website and it should open
                echo http://localhost:4343 in your default browser. after it opens, copy the url and head to puffin browser.
                echo while you are in puffin browser, paste the url you just copied and it should take you to the videolist.
                echo click on make a video and it should work. boom! Wrapper: Offline For MacOS is working again!
                echo you may need to stay in this window just in case something happens. 
                echo if you want to close Wrapper: Offline, just type close and it should close it down.
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

          ;;
                [close]* )
                clear
                
                echo Closing Wrapper: Offline
                
                pkill "node"
                pkill "http-server"
                pkill "start_wrapper.sh"
                
                ;;
                [server]* )
                clear
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                echo Opening Wrapper: Offline asset/server files through default browser.
                echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
                open https://localhost:4664/
                
                
                         while [ true ]
                do

                    read -r -p "Press any key to continue..." key
                done
                ;;
                * ) echo "";;
            esac
        done
        ;;
        * );;
    esac
done
