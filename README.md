# led_color_picker

A Flutter project to allow ZSA owners to set the LED colors to all keys on their keyboards in real time.  This tool is meant only to test colors and then allow you to copy values you like.  You will then have to use Oryx to assing the hex color codes to your keys.

![Screenshot](/docs/screenshot.png)

## DISCLAIMER

I made this app for me.  I'm sharing it so it may help others, but offer no support or expectation for updates.

## Requirements

[ZSA's keymapp](https://blog.zsa.io/keymapp/) is required.

## Running

It _should_ run on Windows, macOS, and Linux.  I'm currently providing the source code only because I do not want to deal with proper binary compilation and OS permissions.  Or bugs, feature requests, or anything.

It has not been properly tested and contains bugs and rough edges.

## Linux

### Fix by: [nmaggioni](https://github.com/nmaggioni)

Keymapp does not listen on a TCP port by default on Linux, it instead creates a socket at $XDG_CONFIG_HOME/.keymapp/keymapp.sock

A quick & dirty way of making it run without modifications is creating a temporary bridge with socat:

socat TCP-LISTEN:50051 UNIX-CONNECT:$HOME/.config/.keymapp/keymapp.sock