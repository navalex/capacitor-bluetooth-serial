import Foundation
import CoreBluetooth

@objc public class BluetoothSerial: NSObject, CBCentralManagerDelegate, CBPeripheralDelegate {
    var centralManager: CBCentralManager?
    var discoveredPeripherals: [CBPeripheral] = []

    override public init() {
        super.init()
        centralManager = CBCentralManager(delegate: self, queue: nil)
    }

    public func startScan() {
        centralManager?.scanForPeripherals(withServices: nil, options: nil)
    }

    public func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state != .poweredOn {
            print("Bluetooth is not powered on")
        }
    }

    public func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        print("Discovered: \(peripheral.name ?? "Unknown")")
        discoveredPeripherals.append(peripheral)
    }

    public func getDiscoveredDevices() -> [String] {
        return discoveredPeripherals.map { $0.name ?? "Unknown" }
    }
}
