import { BluetoothSerial } from 'capacitor-bluetooth-serial';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    BluetoothSerial.echo({ value: inputValue })
}
