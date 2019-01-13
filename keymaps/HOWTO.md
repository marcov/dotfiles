### Getting current config

`localectl`

`dumpkeys -l`

`setxkbmap -query`

Keys keycodes:

`showkey [-a]`


## X

### Temp specify a custom mapping for the current session

`setxkbmap -option caps:escape`


### Change a keymap for X

- Get your layout with `setxbmap -query`
- Edit the file name corresponding to your layout in `/usr/share/X11/xkb/symbols/`
- E.g. if your layout is `us`, then edit `/usr/share/X11/xkb/symbols/us`.
- Apply changes by rebooting or with `setxkbmap -layout <layout name>`.

## Console

### Make custom mapping default and persistent

Edit  `/etc/vconsole.conf` and set `KEYMAP` variable to the path of the desired custom mapping.

OR

You can use `loadkeys` command.

OR

You can use `localectl set-keymap --no-convert <my-keymap>`.

### Try a custom mapping file

`sudo loadkeys us-mine.map`
