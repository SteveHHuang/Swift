import SwiftUI

struct ButtonBackground: View{
    var body: some View {
        VStack(spacing:30){
            Text("Title")
                .font(.largeTitle)
            
            Text("With Backgrounds")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("As with most views, we can also customize the background and add a shadow.")
                .foregroundColor(.white)
                .font(.title2)
                .padding()
                .frame(maxWidth:.infinity)
                .background(Color.purple)
            
            Group{
                Button(action:{
                    
                }, label:{
                    Text("Solid Button")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(9)
                })
                
                Button(action:{
                    
                }, label:{
                    Text("Button With Shadow")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(9)
                })
                .shadow(color: .gray .opacity(0.5), radius: 6, x: 2, y: 3)
                
                Button(action:{
                    
                }, label:{
                    Text("Button With Rounded End")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .background(Color.purple)
                        .cornerRadius(.infinity)
                })
                
            }
        }
    }
}
