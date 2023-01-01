import SwiftUI

struct ButtonBorder: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Square Border Button")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
                .border(Color.purple, width: 2)
                .cornerRadius(9)
            
        })
    }
}
