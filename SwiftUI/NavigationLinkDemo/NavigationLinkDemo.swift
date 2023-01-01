import SwiftUI

struct NavigationLinkDemo: View {
    var body: some View {
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
}

extension NavigationLinkDemo {
    // some View 描述显示在屏幕上的某种界面
    func makeBigTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("Navigation Link") // View
            .font(.largeTitle) // Modifer
            .padding(.bottom, 10)
        
    }
    
    func makeSubTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("Sub Title")
            .foregroundColor(.gray)
            .font(.title2)
        
    }
    
    func makeDescription() -> some View {
        Text("Navigation link is your way to navigation to another view")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
    }
    
    func makeDemoView() -> some View {
        NavigationStack{
            NavigationLink("List View", destination: ListViewDemo())
                .navigationTitle("Navigation Link Demo")
            
            NavigationLink{
                //跳转的目标
            } label: {
                //链接的界面
                LinkView()
            }
        }
        .border(.brown, width: 2)
    }
}

struct LinkView: View{
    var body: some View{
        HStack{
            Image(systemName: "square.stack.3d .down.forward")
                .font(.largeTitle)
            Text("ZStackView Demo")
                .font(.largeTitle)
        }
        .foregroundColor(.green)
    }
}







