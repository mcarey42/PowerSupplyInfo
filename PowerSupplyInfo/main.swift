//
//  main.swift
//  PowerSupplyInfo
//
//  Created by Mark Carey on 2/1/18.
//  Copyright © 2018 Mark Carey. All rights reserved.
//

import Foundation

//import Cocoa
import IOKit.ps

let psAdapter = IOPSCopyExternalPowerAdapterDetails().takeRetainedValue()

print("Power Adapter Information")
print(psAdapter)

let psInfo = IOPSCopyPowerSourcesInfo().takeRetainedValue()
let psList = IOPSCopyPowerSourcesList(psInfo).takeRetainedValue() as [CFTypeRef]

for ps in psList {
    if let psDesc = IOPSGetPowerSourceDescription(psInfo, ps).takeUnretainedValue() as? [String: Any] {
        print("Power Supply Descirption Enumeration:")
        for element in psDesc {
            print("\t",  element )
        }
    }
}


//var source =  IOPSCopyPowerSourcesInfo()
//print(source)

