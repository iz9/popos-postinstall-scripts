#!/usr/bin/env bash

to_do_open_link() { 
  local TODO="$1" 
  local URL="$2" 
 
  read -p "TODO: $TODO. \n Press ENTER to open $URL" 
  xdg-open "$URL" 
  read -p "Press ENTER to continue..." 
 
  return 
} 

to_do_open_link 'Open gmail with dev.iz9.account' https://mail.google.com

to_do_open_link 'Open gmail with web.iz9.account' https://mail.google.com

to_do_open_link 'Sign in https://learn.javascript.ru/' https://learn.javascript.ru/

to_do_open_link 'Sign in https://www.codewars.com' https://www.codewars.com/

to_do_open_link 'Sign in https://wakatime.com' https://wakatime.com/

to_do_open_link 'Sign in https://www.linkedin.com' https://www.linkedin.com/

to_do_open_link 'Sign in https://github.com.com' https://github.com

to_do_open_link 'Sign in https://hackmd.io' https://hackmd.io

to_do_open_link 'Sign in https://codesandbox.io' https://codesandbox.io

to_do_open_link 'Open https://devdocs.io. Open on the phone. Download docs you need' https://devdocs.io

read -p 'All done!'
