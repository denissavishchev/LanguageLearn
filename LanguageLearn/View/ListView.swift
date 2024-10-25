import SwiftUI

struct ListView: View {
    
    @State var searchText = ""
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
            VStack (spacing: 12){
                    HStack(spacing: 8){
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 16, height: 16)
                        TextField("Search", text: $searchText)
                    }
                    .frame(width: .infinity)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 20)
                    .background(Color(.orange.opacity(0.2)))
                    .cornerRadius(12)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 8){
                            CardItem()
                            CardItem()
                            CardItem()
                            CardItem()
                        }
                    }
                }
            Button{
                listViewModel.isShowAddView.toggle()
            }label: {
                ZStack{
                    Circle()
                        .frame(width: 56, height: 56)
                        .foregroundColor(.green)
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                }
            }
            .offset(x: -20, y: -30)
        }
    }
}


struct CardItem: View{
    var body: some View{
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("TR")
                    .font(.system(size: 12, weight: .black))
                    .padding(.bottom, 4)
                Text("Araba")
                    .font(.system(size: 18, weight: .black))
                    .padding(.bottom, 1)
                Text("Car")
                    .font(.system(size: 18, weight: .light))
            }
            Divider()
            VStack(alignment: .leading){
                Text("Note")
                    .font(.system(size: 12, weight: .black))
                    .padding(.bottom, 2)
                Text("a four-wheeled road vehicle that is powered by an engine and is able to carry a small number of people")
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(Color(.orange))
        .cornerRadius(12)
        
    }
}

#Preview {
    ContentView()
}
