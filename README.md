# PowerSupplyInfo
Information about Mac power supplies from the command line (written in Swift)

Simple, easy example of how to query the power supply and battery information on a Mac from Swift.  

This was surprisingly hard to get to, I would have expected a command line tool to have access to
this kind of info, but I didn't find one when I looked, so here's a simple example tool to do it.

You'll have to remove or add your own signing key for Code signing if you want to build it yourself.

Output should look roughly like this:
```
Power Adapter Information
{
    AdapterID = 5718;
    Current = 4300;
    FwVersion = 01070068;
    HwVersion = "1.0";
    Manufacturer = "Apple Inc.";
    Name = "87W USB-C Power Adapter";
    SerialString = C0XXXXXXXXXXXXXXX;
    Voltage = 20000;
    Watts = 86;
}

Power Supply Description Enumeration:
	 (key: "Hardware Serial Number", value: D8XXXXXXXXXXXXXXX)
	 (key: "Is Charging", value: 1)
	 (key: "Time to Full Charge", value: 45)
	 (key: "Max Capacity", value: 100)
	 (key: "Transport Type", value: Internal)
	 (key: "Power Source ID", value: 4259939)
	 (key: "Current Capacity", value: 88)
	 (key: "Is Present", value: 1)
	 (key: "Battery Provides Time Remaining", value: 1)
	 (key: "Time to Empty", value: 0)
	 (key: "Is Finishing Charge", value: 0)
	 (key: "Name", value: InternalBattery-0)
	 (key: "Current", value: 3137)
	 (key: "DesignCycleCount", value: 1000)
	 (key: "Power Source State", value: AC Power)
	 (key: "Type", value: InternalBattery)
	 (key: "BatteryHealth", value: Good)
```

Hope someone finds it useful!
