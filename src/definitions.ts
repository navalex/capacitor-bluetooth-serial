export interface BluetoothSerialPlugin {
  startScan(): Promise<void>;
  getDiscoveredDevices(): Promise<{ devices: string[] }>;
}
