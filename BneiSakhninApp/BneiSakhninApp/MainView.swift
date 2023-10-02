import SwiftUI

struct MainView: View {
    @State private var isClicked = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("FansBg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .offset(CGSize(width: -55, height: 0))
                
                VStack{
                    Spacer()
                    HStack{
                        NavigationLink(destination:
                                        {
                            MainView1()
                        },label: {
                            Text("Next")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .padding(.horizontal,160)
                                .background(Color("RedSakh"))
                        })
                    }
                    
                }
            }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
