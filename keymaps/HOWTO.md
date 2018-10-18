### Getting current config

`localectl`

`dumpkeys -l`

`setxkbmap -query`

Keys keycodes:

`showkey [-a]`


### Temp specify a custom mapping for the current session

`setxkbmap -option caps:escape`

### Make custom mapping default and persistent

Edit  `/etc/vconsole.conf` and set `KEYMAP` variable to the path of the desired custom mapping.

OR

You can use `loadkeys` command.

OR

You can use `localectl set-keymap --no-convert <my-keymap>`.

### Try a custom mapping file

`sudo loadkeys us-mine.map`






### Credits
[archlinux wiki](https://wiki.archlinux.org/index.php/Keyboard_configuration_in_console#Creating_a_custom_keymap)
