This a project to create a Modular Antenna Tuner System that can be reconfigured for
different needs.  This material is copyrighted by Daniel Marks (KW4TI) and licensed under
the Creative Commons License CC-BY-SA 4.0.

It consists of three parts: 

1.  Controller - contains a microcontroller (STM32F108C8T6) with SWR bridge, phase
detectors, and connections to the relay boards.  It also has a bias-tee to be powered
over the coax.  It controls the inductor and capacitor relay boards and senses the
magnitude and phase of the return signal.  This board also has a third sense transformer
for the current in the load after the matching network, so the phase of the current
in the load can be directly sensed.  There is a port for an HC-12 wireless control
unit to be controlled remotely.

2.  ReversibleSection - a relay board that can be configured to either have 7 inductors
or capacitors on it part of an antenna tuner.  The inductor or capacitor configuration
is selected by soldering between jumpers on the board.  There is also a switch to connect the
section to one of two ports.  It is controlled over I2C from the Controller.  Up to
eight sections can be connected to the controller.

3.  Remote - this communicates with the controllers to instruct them when to tune and
to get diagnostic data from the controllers.  It uses a wireless HC-12 unit to communicate
to the controllers.   It can connect up to the rig and have tuning initiated by the rig
(at least for ICOM, perhaps Yaesu in the future).  It also has a bias-tee to inject 
power onto the coax, and a SWR bridge as a backup to sense and issue a warning about
high reflections.

Currently what is on this github are the Kicad files for these three devices, including
schematics and gerbers.  Software will follow once it becomes mature enough to be 
released.
