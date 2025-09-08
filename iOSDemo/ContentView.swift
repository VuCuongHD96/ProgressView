import SwiftUI
import ProgressBar

struct ContentView: View {
    @State private var progress: Float = 0.3
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Progress Bar Demo")
                .font(.largeTitle)
                .padding()
            
            ProgressBar(progress: progress)
                .frame(height: 50)
                .padding(.horizontal)
            
            HStack(spacing: 20) {
                Button(action: {
                    withAnimation {
                        progress = max(0, progress - 0.1)
                    }
                }) {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                }
                
                Button(action: {
                    withAnimation {
                        progress = min(1, progress + 0.1)
                    }
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                }
            }
            
            Text("\(Int(progress * 100))%")
                .font(.title2)
                .bold()
        }
    }
}

#Preview {
    ContentView()
}
