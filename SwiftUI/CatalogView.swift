import SwiftUI
struct CatalogView: View {
    var body: some View {
        NavigationStack {
            List {
                // 罗列我们写过的所有的界面
                // 每一行是一个 NavigationLink
                Group{
                NavigationLink {
                    ContentView()
                } label: {
                    HStack {
                        Image(systemName: "list.bullet.rectangle.fill")
                        Text("Content View")
                    }
                }
                
                NavigationLink {
                    HStackView()
                } label: {
                    HStack {
                        Image(systemName: "square.stack.3d.forward.dottedline")
                        Text("HStack View")
                    }
                }
                
                NavigationLink {
                    VStackView()
                } label: {
                    HStack {
                        Image(systemName: "square.3.layers.3d.top.filled")
                        Text("VStack View")
                    }
                }
                
                NavigationLink {
                    ZStackView()
                } label: {
                    HStack {
                        Image(systemName: "square.stack.3d.down.forward")
                        Text("ZStack View")
                    }
                }
                
                NavigationLink {
                    ListViewDemo()
                } label: {
                    HStack {
                        Image(systemName: "list.bullet.rectangle.fill")
                        Text("List View")
                    }
                }
                
                NavigationLink {
                    PullInViewDemo()
                } label: {
                    HStack {
                        Image(systemName: "arrow.down.right.and.arrow.up.left")
                        Text("Pull In View")
                    }
                }
                
                NavigationLink {
                    PushOutViewDemo()
                } label: {
                    HStack {
                        Image(systemName: "arrow.up.backward.and.arrow.down.forward")
                        Text("Push Out View")
                    }
                }
            }
                    NavigationLink {
                        ButtonIntroduction()
                    } label: {
                        HStack {
                            Image(systemName: "button.programmable")
                            Text("Button introduction")
                        }
                    }
                    
                    NavigationLink {
                        ButtonBackground()
                    } label: {
                        HStack {
                            Image(systemName: "button.programmable.square.fill")
                            Text("Button background")
                        }
                    }
                    
                    NavigationLink {
                        ButtonBorder()
                    } label: {
                        HStack {
                            Image(systemName: "button.programmable.square")
                            Text("Button border")
                        }
                    }
                    
                    NavigationLink {
                        ButtonAssignment()
                    } label: {
                        HStack {
                            Image(systemName: "button.programmable")
                            Text("Button introduction")
                        }
                    }
                NavigationLink {
                    BT_sec()
                } label: {
                    HStack {
                        Image(systemName: "button.programmable.square")
                        Text("ButtonAssignment_2")
                    }
                }
                }
            
                .navigationTitle("Catalog")
                .navigationBarTitleDisplayMode(.large)
            }
        }

}
        struct ListRowItem: View {
            var body: some View {
                NavigationLink {
                    
                } label: {
                    
                }
            }
        }
