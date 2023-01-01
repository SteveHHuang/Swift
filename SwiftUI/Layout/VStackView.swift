import SwiftUI

// 写一个界面：屏幕上的东西是如何布局的
// VStack - 控制界面如何在屏幕上垂直分布的
struct VStackView: View {
    var body: some View {
        Group{
            // 不要在 body 里面写界面细节
            // 写结构
            VStack(spacing: 20) {
                // Big title
                makeBigTitle()
                
                // Sub title
                makeSubTitle()
                
                // Description
                makeDescription()
                
                // Demo View
                makeDemoView()
            }
            .navigationTitle("VStack View")
            .navigationBarTitleDisplayMode(.inline)
        }
    }    
}
extension VStackView {
    // some View 描述显示在屏幕上的某种界面
    func makeBigTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("VStack") // View
            .font(.largeTitle) // Modifer
            .padding(.bottom, 10)
            .border(Color.blue, width: 2)
    }
    
    func makeSubTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("Introduction")
            .foregroundColor(.gray)
            .font(.title2)
        
    }
    
    func makeDescription() -> some View {
        Text("A VStack will verticaly arrange other views within it. VStak is a pull-in view.")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
    }
    
    func makeDemoView() -> some View {
        VStack(spacing: 10) {
            Text("View 1")
            Text("View 2")
            Text("View 3")
            Text("View 4")
            Text("View 5")
            Text("View 6")
            Text("View 7")
            Text("View 8")
            Text("View 9")
            
            Spacer()
        }
      
        //.border(Color.blue, width: 2)
    }
    
}









