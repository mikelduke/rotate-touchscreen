# Touchscreen Rotater

Bash scripts to rotate the touchscreen when the laptop screen is rotated

-------------------------------------------

Thanks to this [gist](https://gist.github.com/mildmojo/48e9025070a2ba40795c)

I found I have a similar problem on my Dell5379 running Ubuntu.
The laptop will automatically rotate the display correctly, but the touchscreen overlay stayed in
it's default orientation.

These scripts will rotate the touchscreen to match the display.

## Instructions

Needs monitor-sensor and expect to work. These may already be installed or can be added with `sudo apt install iio-sensor-proxy expect`

Add a call to rotate-touchscreen-launcher.sh in one of your window managers startup scripts
or add `nohup /path/to/rotate-touchscreen/rotate-touchscreen-launcher.sh >/dev/null 2>&1 &` to
`Startup Applications Prefences` in Ubuntu

Logs a message to syslog when changing orientation
