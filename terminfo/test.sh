#!/usr/bin/env bash

echo -e "The following should be printed as stated in the text:\n"

echo -e "\e[1m - *This* is bold text \e[0m \n"
echo -e "\e[3m - *This* is italic text \e[23m \n"
echo -e "\e[9m - *This* is strikethrough text \e[0m \n"

echo -e "\e[4:0m - This is no underline \n"
echo -e "\e[4:1m - This is a straight underline \n"
echo -e "\e[4:2m - This is a double underline \n"
echo -e "\e[4:3m - This is a curly underline \n"
echo -e "\e[4:4m - This is a dotted underline (not implemented in kitty) \n"
echo -e "\e[4:5m - This is a dashed underline (not implemented in kitty) \n"
echo -e "\e[4m - This is a straight underline (for backwards compat) \n"
echo -e "\e[24m - This is no underline (for backwards compat) \n"
