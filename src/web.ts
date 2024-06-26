import { WebPlugin } from '@capacitor/core';

import type { BluetoothSerialPlugin } from './definitions';

export class BluetoothSerialWeb
  extends WebPlugin
  implements BluetoothSerialPlugin
{
  startScan(): Promise<void> {
    throw new Error('Method not implemented.');
  }

  getDiscoveredDevices(): Promise<{ devices: string[] }> {
    throw new Error('Method not implemented.');
  }
}
