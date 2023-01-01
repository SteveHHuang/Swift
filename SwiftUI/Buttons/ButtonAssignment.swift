import SwiftUI
//2023新年快乐🎉
struct ButtonAssignment : View{
    var body: some View {
        VStack(spacing:30){
            Text("Button")
                .font(.largeTitle)
            
            Text("With SF Symbols")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Buttons can be composed with SF Symbols too.")
                .foregroundColor(.white)
                .font(.title2)
                .padding()
                .frame(maxWidth:.infinity)
                .background(Color.purple)
            
            Group{
                Button(action:{
                    
                }, label:{
                    
                    HStack {
                        Text("Button With Symbol")
                        Image(systemName: "gift.fill")
                    }
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(9)
                })
                
                Button(action:{
                    
                }, label:{
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(9)
                })
                .shadow(color: .gray .opacity(0.5), radius: 6, x: 2, y: 3)
                
                Button(action:{
                    
                }, label:{
                    VStack{
                        Image(systemName: "record.circle")
                        Text("Record")
                        //instruction的那个图标找不到T_T
                    }
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.vertical, 20)
                        .padding(.horizontal,40)
                        .background(Color.purple)
                        .cornerRadius(.infinity)
                })
                
            }
        }
    }
}

