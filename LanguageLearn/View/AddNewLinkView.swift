import SwiftUI

struct AddNewLinkView: View {
    
    @State var linkTitle = ""
    @State var link = ""
    @EnvironmentObject var linkViewModel: LinkViewModel
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("New Link")
                    .font(.system(size: 20, weight: .black))
                    .padding(.leading, 16)
                Spacer()
                Button(action: {
                    linkViewModel.isShowAddLink.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.black)
                })
            }
            VStack(alignment: .leading){
                HStack{
                    TextField("Title", text: $linkTitle)
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .background(Color(.orange))
                .cornerRadius(12)
                
                HStack{
                    TextField("Link", text: $link)
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .background(Color(.orange))
                .cornerRadius(12)
            }
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Save")
                    .padding(.vertical, 12)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color(.green))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(16)
        .background(Color(.white))
    }
}

#Preview {
    AddNewLinkView()
}
