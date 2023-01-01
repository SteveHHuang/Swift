import SwiftUI

// 写一个界面：屏幕上的东西是如何布局的
// VStack - 控制界面如何在屏幕上垂直分布的
struct ListViewDemo: View {
    var body: some View {
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
    }
}

extension ListViewDemo {
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
        Text("List different items vertically, list is a push-out view.")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
    }
    
    func makeDemoView() -> some View {
        List{
            ListRow(icon: "person.circle.fill", label: "Default View")
            ListRow(icon: "person.circle.fill", label: "List View")
            ListRow(icon: "person.circle.fill", label: "TemplateView")
            ListRow(icon: "person.circle.fill", label: "HStack View")
            ListRow(icon: "person.circle.fill", label: "VStack View")
            ListRow(icon: "person.circle.fill", label: "ZStack View")
        }
        .border(.brown, width: 2)
    }
    
}

struct ListRow: View{
    let icon: String
    let label: String
    // ContentView()
    // TemplateView()
    // VStackView()
    // HStackView()
    // ZStackView()
    // ListViewDemo()
    var body: some View{
        HStack{
            //Icon
            Image(systemName: "person.circle.fill")
            //Text
        }
    }
}








