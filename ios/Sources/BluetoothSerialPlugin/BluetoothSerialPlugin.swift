import Foundation
import Capacitor

@objc(BluetoothSerialPlugin)
public class BluetoothSerialPlugin: CAPPlugin {
    public let pluginMethods = [
        CAPPluginMethod(name: "startScan", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "getDiscoveredDevices", returnType: CAPPluginReturnPromise)
    ]
    let bluetoothSerial = BluetoothSerial()

    @objc func startScan(_ call: CAPPluginCall) {
        bluetoothSerial.startScan()
        call.resolve()
    }

    @objc func getDiscoveredDevices(_ call: CAPPluginCall) {
        let devices = bluetoothSerial.getDiscoveredDevices()
        call.resolve([
            "devices": devices
        ])
    }
}
