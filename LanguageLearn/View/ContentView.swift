import SwiftUI

struct ContentView: View {
    //Test55
    @State var selectedTab = 2
    @ObservedObject var listViewModel = ListViewModel()
    @ObservedObject var linkViewModel = LinkViewModel()
    
    var body: some View {
        ZStack{
            TabView(selection: $selectedTab){
                ListView()
                    .environmentObject(listViewModel)
                    .padding(.horizontal, 16)
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
            }
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
