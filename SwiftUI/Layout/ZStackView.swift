import SwiftUI

struct ZStackView: View {
    // 所有用 @State 修饰的东西，当它发生变化的时候，界面就会自动发生变化。
    @State var alignment: Alignment = .center
    
    @State var opacity: Double = 1 // 不透明度
    
    
    var body: some View {
        Group{
            // 不要在 body 里面写界面细节
            // 写结构
            // Big title
            makeBigTitle()
            
            // Sub title
            makeSubTitle()
            
            // Description
            makeDescription()
            
            // Demo View
            makeDemoView()
        }
        .navigationTitle("ZStack View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

extension ZStackView {
    // some View 描述显示在屏幕上的某种界面
    func makeBigTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("ZStack")
            .font(.largeTitle) // Modifer
            .padding(.bottom, 10)
        
    }
    
    func makeSubTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("Layering & Aligning")
            .foregroundColor(.gray)
            .font(.title2)
        
    }
    
    func makeDescription() -> some View {
        Text("ZStacks are great for layering views. For example, putting text on top of an image.")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.green)
    }
    
    func makeDemoView() -> some View {
        VStack {
            Button(action: {
                if opacity == 1 {
                    opacity = 0
                }
                else {
                    opacity = 1
                }
            }, label: {
                makeImageView()    
            })
            
            
            Text("But what if you wanted to have all the views align to the bottom?")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .opacity(opacity)
            
            makeButtonsView()
        }
    }
    
    func makeImageView() -> some View {
        ZStack(alignment: alignment) {
            Image("yosemite")
                .resizable()
                .aspectRatio(contentMode: .fit)
            // Text
            Text("Yosemite National Park")
                .font(.title)
                .padding()
//                .frame(maxWidth: .infinity)
                .background(Color.white.opacity(0.6))
        }
    }
    
    func makeButtonsView() -> some View {
        VStack {
            makeTopRowView()
            makeRowView()
            makeBottomRowView()
        }
    }
    
    /*
     * 当提到一个按钮的时候：按钮长什么样子？按下去之后会发生什么？
     */
    func makeTopRowView() -> some View {
        HStack {
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.topLeading
            }, label: {
                Text("Top Leading")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
            
            Spacer()
            
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.top
            }, label: {
                Text("Top")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
            
            Spacer()
            
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.topTrailing
            }, label: {
                Text("Top Trailing")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
        }
        .padding(.horizontal)
        .padding(.top, 20)
    }
    
    func makeRowView() -> some View {
        HStack {
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.leading
            }, label: {
                Text("Leading")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
            
            Spacer()
            
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.center
            }, label: {
                Text("Center")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
            
            Spacer()
            
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.trailing
            }, label: {
                Text("Trailing")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
        }
        .padding(.horizontal)
        .padding(.top, 20)
    }
    
    func makeBottomRowView() -> some View {
        HStack {
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.bottomLeading
            }, label: {
                Text("Bottom Leading")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
            
            Spacer()
            
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.bottom
            }, label: {
                Text("Bottom")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
            
            Spacer()
            
            Button(action: {
                // 按钮按下去之后的行为
                alignment = Alignment.bottomTrailing
            }, label: {
                Text("Bottom Trailing")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 100, height: 75)
                    .background(Color.blue)
                    .cornerRadius(6)
            })
        }
        .padding(.horizontal)
        .padding(.top, 20)
    }
    
}









