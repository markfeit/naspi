# NASPi Hardware Information


## Fan

The fan is on GPIO 18 in PWM out mode with a servo frequency of 25 kHz.

### Sample Code

```
#!/usr/bin/python3

import pigpio
gpio = pigpio.pi()

# Initialize
gpio.set_mode(18, pigpio.OUTPUT)
gpio.set_PWM_frequency(18, 25000)
gpio.set_PWM_range(18, 100)

# Set the fan to 100%
gpio.set_PWM_dutycycle(18, 100)
```


## Power Button

The power button is on GPIO 4 in "in" mode.



```
#!/usr/bin/python3


import pigpio
gpio = pigpio.pi()

# Initialize
gpio.set_mode(4, pigpio.INPUT)

# Wait for a press and release
gpio.wait_for_edge(4)
print("Pressed")
gpio.wait_for_edge(4, pigpio.FALLING_EDGE)
print("Released")
```


## Power Control

Power control is on GPIO 27 and does a hard powerdown of the system 8
seconds after the is set high.  If the line is set low during that
time, powerdown is aborted.

### Sample Code

```
#!/usr/bin/python3

import pigpio
import time

import pigpio
gpio = pigpio.pi()

gpio.set_mode(27, pigpio.OUTPUT)

gpio.write(27, 1)
print("Started")

# Don't wait too long of the machine will power down.
time.sleep(5)

gpio.write(27, 0)
print("Aborted")
```

## Boot Control

Boot control is on GPIO 17 in "out" mode.

Setting this to `1` appears to tell the controller to boot the Pi next
time the button is pressed.

For a clean shutdown, set this to `1`, then run `poweroff`.


