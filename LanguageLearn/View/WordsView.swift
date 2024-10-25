import SwiftUI

struct WordsView: View {
    
    @State var isShowTranslate = false
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                VStack{
                    VStack(alignment: .leading){
                        Text("TR")
                            .font(.system(size: 12, weight: .black))
                            .padding(.bottom, 0)
                        Text("Araba")
                            .font(.system(size: 36, weight: .black))
                            .padding(.bottom, 4)
                    }
                    ZStack{
                        Text("Car")
                            .font(.system(size: 26, weight: .regular))
                            .opacity(isShowTranslate ? 1 : 0)
                        Button(
                            action: {
                                withAnimation{
                                    isShowTranslate.toggle()
                                }
                            },
                            label: {
                                Text("Show translate")
                                    .padding(.vertical, 12)
                                    .padding(.horizontal, 60)
                                    .foregroundColor(.white)
                                    .background(Color(.green))
                                    .clipShape(Capsule())
                            })
                        .opacity(isShowTranslate ? 0 : 1)
                    }
                }
                Spacer()
                Button(
                    action: {
                        
                    },
                    label: {
                        HStack {
                            Text("Next")
                            Image(systemName: "chevron.right")
                        }
                        .foregroundColor(.green)
                    })
                Rectangle()
                    .frame(height: 36)
                    .opacity(0)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    }
}


#Preview {
    ContentView()
}
