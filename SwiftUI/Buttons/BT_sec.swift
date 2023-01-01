import SwiftUI
//2023新年快乐🎉
struct BT_sec : View{
    var body: some View {
        VStack(spacing:30){
            Text("Button")
                .font(.largeTitle)
            
            Text("Floating")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("You can also create floating buttons by using ZStack so the button on the top layer, over everything else.")
                .foregroundColor(.white)
                .font(.title2)
                .padding()
                .frame(maxWidth:.infinity)
                .background(Color.purple)
            
            Group{
                ZStack() {
            
                
                }
                
                
                
            }
        }
    }
}


