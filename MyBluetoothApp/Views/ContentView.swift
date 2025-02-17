//
//  ContentView.swift
//  MyBluetoothApp
//
//  Created by Sanjay Nelagadde on 20/1/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var bluetoothManager = BluetoothManager.shared
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                BluetoothScannerView()
                
                if bluetoothManager.connectedDevice == nil && bluetoothManager.isConnecting == false {
                    BluetoothStatusView()
                        .padding(.top, 8)
                }
            }
        }
        .onChange(of: bluetoothManager.connectedDevice) { device in
            if device != nil {
                bluetoothManager.stopScanning()
            }
        }
    }
}

#Preview {
    ContentView()
}
