import { BluetoothSerial } from 'capacitor-bluetooth-serial';

window.blScan = async () => {
  BluetoothSerial.startScan();
};

window.blScanned = async () => {
    const res = await BluetoothSerial.getDiscoveredDevices();
    document.getElementById('blScanned').innerHTML = JSON.stringify(res);
}