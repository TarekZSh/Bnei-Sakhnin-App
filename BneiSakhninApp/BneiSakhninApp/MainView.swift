import SwiftUI

struct MainView: View {
    @State private var isClicked = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if !isClicked {
                    VStack {
                        Image("FansBg")
                            .resizable()
                            .frame(width: .infinity, height: 950)
                            .padding(.top,-70 )
                            .aspectRatio(contentMode: .fit)
                    }
                }
                
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
            }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
