import SwiftUI

struct LinksView: View {
    
    @EnvironmentObject var linkViewModel: LinkViewModel
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
            ScrollView{
                VStack(spacing: 10){
                   LinkItem(text: "Grammar lessons")
                   LinkItem(text: "Grammar lessons2")
                   LinkItem(text: "Grammar lessons3")
                   LinkItem(text: "Grammar lessons4")
                }
            }
            Button{
                linkViewModel.isShowAddLink.toggle()
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
        .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }

struct LinkItem: View {
    
    var text: String
    
    var body: some View {
        HStack{
            HStack(spacing: 14){
                Image(systemName: "link")
                Text(text)
            }
            Spacer()
            Button{
                //
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(Color(.orange))
        .cornerRadius(12)
        .onTapGesture {
            print(1)
        }
    }
}

#Preview {
    ContentView()
}
