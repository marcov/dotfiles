#!/usr/bin/env bash

printf '\n@ TERMINAL TEST @ - The following should be printed as stated in the text\n\n'

printf '____________________________ font-style ___________________________\n\n'
printf '\e[1m - *This* is bold text \e[0m \n\n'
printf '\e[3m - *This* is italic text \e[23m \n\n'
printf '\e[9m - *This* is strikethrough text \e[0m \n\n'
echo ''

printf '_________________________ text-decoration _________________________\n\n'
printf '\e[4:0m - This is NOT underline \n\n'
printf '\e[4:1m - This is a straight underline \n\n'
printf '\e[4:2m - This is a double underline \n\n'
printf '\e[4:3m - This is a curly underline \n\n'
printf '\e[4:4m - This is a dotted underline \n\n'
printf '\e[4:5m - This is a dashed underline \n\n'
printf '\e[4m - This is a straight underline \n\n'
printf '\e[24m - This is NOT underline \n\n'
echo ''

printf '______________________________ color ______________________________\n\n'
printf '\e[93m - This text is YELLOW \e[0m \n\n'
printf '\e[41m - This text has RED background\e[0m \n\n'
printf '\e[93m\e[41m - This text is YELLOW AND has a RED background\e[0m \n\n'
