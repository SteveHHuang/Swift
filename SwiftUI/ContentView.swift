import SwiftUI

// :View - 所有要显示在屏幕上的东西
struct ContentView: View {
    // :View 要求一定要有一个叫做 body 的属性
    // 描述界面的样子
    var body: some View {
        Text("Hello")
            .navigationTitle("Content View")
            .navigationBarTitleDisplayMode(.inline)
    }
}
