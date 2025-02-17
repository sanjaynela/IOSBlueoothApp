import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.1)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image(systemName: "wave.3.right.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                
                Text("Bluetooth Scanner")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    LaunchScreen()
} 