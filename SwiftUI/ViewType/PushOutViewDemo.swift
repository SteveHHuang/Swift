import SwiftUI

struct PushOutViewDemo: View{
    var body: some View{
        VStack(spacing:30){
            Text("Layout behaviour")
                .font(.largeTitle)
            
            Text("Views that push Out")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Some view will push out to fill up all available spaces within their parent")
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .font(.title3)
                .background(Color.purple)
            
            /**ZStack(alignment: .topLeading){
                Color.purple
                Image(systemName: "arrow.up.left")
                    .foregroundColor(.white)
                    .font(.largeTitle)
             }
            */
            Color.purple
                .overlay(
                    Image(systemName: "arrow.up.left")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(.top).padding(.leading).border(.white, width: 2),
                        alignment: .topLeading
                )
                .overlay(
                    Image(systemName: "arrow.up.right")
                        .foregroundColor(.white)
                        .font(.largeTitle),
                    alignment: .topTrailing
                )
                .overlay(
                    Text("Color are Push-Out views.")
                        .font(.largeTitle)
                        .foregroundColor(.white),
                    alignment: .center
                )
            }
        }
    }
