import SwiftUI

struct PullInViewDemo: View {
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

extension PullInViewDemo {
    // some View 描述显示在屏幕上的某种界面
    func makeBigTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("Latout Behavior") // View
            .font(.largeTitle) // Modifer
            .padding(.bottom, 10)
        
    }
    
    func makeSubTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("Views that Pull In")
            .foregroundColor(.gray)
            .font(.title2)
        
    }
    
    func makeDescription() -> some View {
        Text("Some views minimize their frame size so it as big as the content within it.")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.purple)
    }
    
    func makeDemoView() -> some View {
        VStack(spacing: 20){ 
            makeCanvas()
            Text("Pull In views temd to center themselves within their parent container view.")
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
        }
    }
    
}

func makeCanvas() -> some View{
    VStack{
        Image(systemName: "arrow.down.to.line")//下箭头
        
        HStack{
            Image(systemName: "arrow.right.to.line")
            Text("Text views pull in.")
                .border(.blue, width:2)
            Image(systemName: "arrow.left.to.line")
        }
        Image(systemName: "arrow.up.to.line")
    }
    .font(.headline)
}









