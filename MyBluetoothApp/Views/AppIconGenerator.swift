import SwiftUI

struct AppIcon: View {
    var body: some View {
        ZStack {
            Color.white // Base white background
            
            Circle()
                .fill(Color.blue.opacity(0.1))
                .padding(50)
            
            Image(systemName: "wave.3.right.circle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.blue)
                .padding(80)
        }
        .background(Color.white)
    }
}

// Helper view to generate all required sizes
struct IconGenerator: View {
    let sizes: [(String, CGFloat)] = [
        ("iPhone_20pt@2x", 40),
        ("iPhone_20pt@3x", 60),
        ("iPhone_29pt@2x", 58),
        ("iPhone_29pt@3x", 87),
        ("iPhone_40pt@2x", 80),
        ("iPhone_40pt@3x", 120),
        ("iPhone_60pt@2x", 120),
        ("iPhone_60pt@3x", 180),
        ("iPad_20pt", 20),
        ("iPad_20pt@2x", 40),
        ("iPad_29pt", 29),
        ("iPad_29pt@2x", 58),
        ("iPad_40pt", 40),
        ("iPad_40pt@2x", 80),
        ("iPad_76pt", 76),
        ("iPad_76pt@2x", 152),
        ("iPad_83.5pt@2x", 167),
        ("iOS_Marketing_1024pt", 1024)
    ]
    
    var body: some View {
        VStack {
            ForEach(sizes, id: \.0) { name, size in
                AppIcon()
                    .frame(width: size, height: size)
                    .overlay(
                        Rectangle()
                            .stroke(Color.gray, lineWidth: 0.5)
                    )
                Text("\(name) - \(Int(size))x\(Int(size))")
                    .font(.caption)
            }
        }
        .padding()
    }
}

#Preview {
    ScrollView {
        IconGenerator()
    }
} 