//
//  MyBluetoothApp.swift
//  MyBluetoothApp
//
//  Created by Sanjay Nelagadde on 20/1/25.
//

import SwiftUI

@main
struct MyBluetoothAppApp: App {
    @State private var isShowingSplash = true
    
    var body: some Scene {
        WindowGroup {
            if isShowingSplash {
                LaunchScreen()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                isShowingSplash = false
                            }
                        }
                    }
            } else {
                ContentView()
            }
        }
    }
}
