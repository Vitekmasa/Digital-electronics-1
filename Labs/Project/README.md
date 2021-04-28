# Car parking sensor with HC-SR04

### Team members:
Masauso Lungu,
Tomáš Marčák,
Vladimír Lukáč,
Vít Maša 

[Link to your GitHub project folder]( http://github.com/xxx)

### Project objectives

Write your text here.


## Hardware description

### Arty A7
The Arty A7, formerly known as the Arty, is a ready-to-use development platform designed around the Artix-7™ Field Programmable Gate Array (FPGA) from Xilinx. It was designed specifically for use as a MicroBlaze Soft Processing System. When used in this context, the Arty A7 becomes the most flexible processing platform you could hope to add to your collection, capable of adapting to whatever your project requires. Unlike other Single Board Computers, the Arty A7 isn't bound to a single set of processing peripherals: One moment it's a communication powerhouse chock-full of UARTs, SPIs, IICs, and an Ethernet MAC, and the next it's a meticulous timekeeper with a dozen 32-bit timers.

The Arty A7 is fully compatible with the high-performance Vivado ® Design Suite. It is supported under the free WebPACK™ license, so designs can be implemented at no additional cost. This free license includes the ability to create MicroBlaze™ soft-core processor designs. Design resources, example projects, and tutorials are available for download at the Arty Resource Center, accessible from reference.digilentinc.com.

### HC-SR04 Ultrasonic sensor
The HC-SR04 uses non-contact ultrasound sonar to measure the distance to an object, and consists of two ultrasonic transmitters (basically speakers), a receiver, and a control circuit. The transmitters emit a high frequency ultrasonic sound, which bounce off any nearby solid objects, and the reciever listens for any return echo. That echo is then processed by the control circuit to calculate the time difference between the signal being transmitted and received. 

We thought to use Pmod connectors, but they have only 3.3V VCC and HC-SR04 need to be powered by 5V. So we decided to use Arduino/chipKIT Shield Connector which have two pins with 3.3V VCC and 5.0V VCC outputs.

### Buzzer
For sound signalization with PWM we choose simple piezo buzzer. Piezo buzzers are simple devices that can generate basic beeps and tones.  They work by using a piezo crystal, a special material that changes shape when voltage is applied to it.  If the crystal pushes against a diaphragm, like a tiny speaker cone, it can generate a pressure wave which the human ear picks up as sound.  Simple change the frequency of the voltage sent to the piezo and it will start generating sounds by changing shape very quickly!

### LED barargraph
As visual signalization we choose 10 segment LED bargraph, where are 5 green segment which signalizated there is lots of free space (3m - 1,6m), 3 yellow segment which signalizated correct possition for parking (1,6m - 1m) and 2 red segments which signalizated there aren't enought space and you have to stop or you can crash your car. Correct possition for parking in city is middle yellow segment, because you must keep a distance of at least 1.2m between the vehicles for safe leave, but when you park in home garage, you can park closser to safe space.


## VHDL modules description and simulations

### HC-SR04 Ultrasonic sensor
##### Sensor_control_unit
##### Sensor_logic_unit
### Buzzer
##### Buzzer_control_unit
### LED bar
##### LED_bar_control_unit

## TOP module description and simulations
# Není správně, musí se pak převyplnit!!
| **Port name** | **Direction** | **Type** | **Description** |
   | :-: | :-: | :-: | :-- |
   | `CLK100MHZ` | input | `std_logic` | Main clock |
   | `BTNC` | input | `std_logic` | Synchronous reset |
   | `SW` | input  | `std_logic_vector(16 - 1 downto 0)` | Four 4-bit values |
   | `CA` | output | `std_logic` | Cathod A |
   | `CB` | output | `std_logic` | Cathod B |
   | `CC` | output | `std_logic` | Cathod C |
   | `CD` | output | `std_logic` | Cathod D |
   | `CE` | output | `std_logic` | Cathod E |
   | `CF` | output | `std_logic` | Cathod F |
   | `CG` | output | `std_logic` | Cathod G |
   | `DP` | output | `std_logic` | Decimal point |
   | `AN` | output | `std_logic_vector(8 - 1 downto 0)` | Common anode signals to individual displays |
### Top_car_parking_assistant


## Video

*Write your text here*


## References
