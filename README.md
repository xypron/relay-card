Control Waveshare Relay Board on Raspberry Pi 3B+
=================================================

The Waveshare Relay Board is a card that can be installed on top of the
Raspberry Pi 3B+. It offers three relays. This project delivers a script
to control the relays from the command line via GPIO.

The GPIO numbers are specific for the Raspberry Pi 3B+.
**Do not use on other Raspberry Pis.**

Installation
------------

    sudo make install

Usage
-----

The GPIOs controling the relays are enabled by the relay-card systemd service.

You have to be member of the group piwsrb to use the relay-card command.

To switch relay 2 on:

    relay-card on 2

To switch relay 2 off:

    relay-card off 2

To switch relay 2 on for 1 second and off again

    relay-card flash 2

To switch relay 2 off for 3 seconds and on again

    relay-card reset 2

To display the status of all 3 relays

    relay-card status

