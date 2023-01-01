import SwiftUI

struct ButtonIntroduction: View {
    // Application state
    @State var counter: Int = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Button")
                .font(.largeTitle)
            
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("If you just want to show the default text style in a button then you can pass in a string as the first parameter.")
                .padding()
                .font(.title2)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.purple)
            
            Button("Default Button Style") {
                // 按下去之后的行为
                counter += 1
            }
            
            Text("You can customize the text shown for a button.")
                .padding()
                .font(.title2)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.purple)
            
            Button(action: {
                // 按下去之后的行为
                counter += 1
            }, label: {
                Text("Headline Font")
                    .font(.headline)
            })
            
            
            Button(action: {
                // 按下去之后的行为
                counter += 1
            }, label: {
                Text("Foreground Color")
                    .font(.title)
                    .foregroundColor(Color.red)
            })
            
            Button(action: {
                // 按下去之后的行为
                counter += 1
            }, label: {
                Text("Thin Font Weight")
                    .font(.title)
                    .fontWeight(.thin)
                    .foregroundColor(Color.blue)
            })
            
            Group {
                Button(action: {
                    
                }, label: {
                    Text("Forgot Password?")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                    
                    Text("Tap to recover")
                        .foregroundColor(.orange)
                })
                
                Button(action: {
                    
                }, label: {
                    makeButtonUI()
                })
            }
            
            // String interpolation
            Text("\(counter)")
                .font(.largeTitle)
                .foregroundColor(.pink)
        }
    }
    
    func makeButtonUI() -> some View {
        VStack {
            Text("New user")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Text("(Register here)")
                .foregroundColor(.orange)
        }
    }
    
}
