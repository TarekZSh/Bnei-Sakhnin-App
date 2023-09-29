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
                            .frame(width: 400, height: 860)
                            .padding(.top, -25)
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
                        .frame(width: UIScreen.main.bounds.width, height: 60)
                        .foregroundColor(.white)
                        .background(Color("RedSakh"))
                        .padding(.top, 780)
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
