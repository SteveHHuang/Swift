import SwiftUI

struct HStackView: View {
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

extension HStackView {
    // some View 描述显示在屏幕上的某种界面
    func makeBigTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("HStack") // View
            .font(.largeTitle) // Modifer
            .padding(.bottom, 10)
        
    }
    
    func makeSubTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("Introduction")
            .foregroundColor(.gray)
            .font(.title2)
        
    }
    
    func makeDescription() -> some View {
        Text("An HStack will horizontally arrange other views within it. An HStack is pull-in view.")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
    }
    
    func makeDemoView() -> some View {
        HStack(spacing: 20) {
            Text("View 1")
            Text("View 2")
            Text("View 3")
            Text("View 4")
        }
        .padding()
        .border(Color.blue, width: 2)

        
    }
    
}









