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
                        Button{
                            isClicked.toggle()
                        }label: {
                            Text("Next")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .padding(.horizontal,160)
                                .background(Color("RedSakh"))
                        }
                    }
                    
                }
                
                 /*
                VStack {
                    Button(action:
                        {
                        isClicked.toggle()
                        })
                        {
                        HStack(spacing: 24)
                            {
                            Text("Next")
                            }
                            .frame(width: UIScreen.main.bounds.width,
                        height:55)
                        .foregroundColor(.white)
                        .background(Color("RedSakh"))
                        .padding(.top, 790)
                        .fontWeight(.black)
                        .font(.system(size: 26))
                        }
                    
                    NavigationLink(
                        destination: MainView1().navigationBarBackButtonHidden(true),
                        isActive: $isClicked
                    )
                    {
                        EmptyView()
                    }
                }
                  */
            }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
