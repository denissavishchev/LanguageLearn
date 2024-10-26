import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = 1
    @ObservedObject var listViewModel = ListViewModel()
    @ObservedObject var linkViewModel = LinkViewModel()
    
    init() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
        ZStack{
            TabView(selection: $selectedTab){
                ListView()
                    .environmentObject(listViewModel)
                    .tag(1)
                    .tabItem {
                        VStack{
                            Image(systemName: "list.dash")
                            Text("List")
                        }
                    }
                WordsView()
                    .padding(.horizontal, 16)
                    .tag(2)
                    .tabItem {
                        VStack{
                            Image(systemName: "textformat.abc")
                            Text("Words")
                        }
                    }
                LinksView()
                    .environmentObject(linkViewModel)
                    .padding(.horizontal, 16)
                    .tag(3)
                    .tabItem {
                        VStack{
                            Image(systemName: "link")
                            Text("Links")
                        }
                    }
            }.accentColor(Color(.green))
            
            if listViewModel.isShowAddView {
                AddNewWordView()
                    .environmentObject(listViewModel)
            }
            if linkViewModel.isShowAddLink {
                AddNewLinkView()
                    .environmentObject(linkViewModel)
            }
        }
    }
}

#Preview {
    ContentView()
}
