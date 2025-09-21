# led_color_picker

A Flutter project to allow ZSA owners to set the LED colors to all keys on their keyboards in real time.  This tool is meant only to test colors and then allow you to copy values you like.  You will then have to use Oryx to assing the hex color codes to your keys.

![Screenshot](/docs/screenshot.png)

## DISCLAIMER

I made this app for me.  I'm sharing it so it may help others, but offer no support or expectation for updates.  It will contain bugs.

## Requirements

* [ZSA's keymapp](https://blog.zsa.io/keymapp/) is required.
* **socat** for Linux and MacOS is required.


## Linux & MacOS

### Fix by: [nmaggioni](https://github.com/nmaggioni)

Run Keymapp, run socat, then run led_color_picker.
```
socat TCP-LISTEN:50051 UNIX-CONNECT:$HOME/.config/.keymapp/keymapp.sock
```