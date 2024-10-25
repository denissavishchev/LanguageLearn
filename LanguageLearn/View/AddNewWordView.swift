import SwiftUI

struct AddNewWordView: View {
    
    @State var newWord = ""
    @State var wordTranslation = ""
    @State var wordDescription = ""
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("New word")
                    .font(.system(size: 20, weight: .black))
                    .padding(.leading, 16)
                Spacer()
                Button(action: {
                    listViewModel.isShowAddView.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.black)
                })
            }
            VStack(alignment: .leading){
                Text("TR")
                    .font(.system(size: 12, weight: .black))
                HStack{
                    TextField("Word", text: $newWord)
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .background(Color(.orange))
                .cornerRadius(12)
                
                HStack{
                    TextField("Translate", text: $wordTranslation)
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .background(Color(.orange))
                .cornerRadius(12)
                
                Text("Description")
                    .font(.system(size: 14, weight: .black))
                    .padding(.top, 24)
                    .padding(.leading, 24)
                
                HStack{
                    Rectangle()
                        .opacity(0.1)
                        .frame(height: 90)
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
    AddNewWordView()
}
