import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        //
        NavigationStack{
            VStack{
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
            .navigationTitle("Navigation Stack Demo")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
extension NavigationStackView {
    // some View 描述显示在屏幕上的某种界面
    func makeBigTitle() -> some View {
        // Text - SwiftUI 里要显示在界面上的文字
        Text("NavigationStack") // View
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
        Text("Description")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
    }
    
    func makeDemoView() -> some View {
        Text("Demo view")
    }
    
}










