import CoreBluetooth
import SwiftUI

// MARK: - Connected Device View
struct ConnectedDeviceView: View {
    @StateObject private var bluetoothManager = BluetoothManager.shared
    
    var body: some View {
        VStack {
            if let device = bluetoothManager.connectedDevice {
                Text("Connected to: \(device.name ?? "Unknown Device")")
                Button("Disconnect") {
                    bluetoothManager.disconnect()
                }
            } else {
                Text("No device connected")
            }
        }
    }
}

#Preview {
    ConnectedDeviceView()
}

