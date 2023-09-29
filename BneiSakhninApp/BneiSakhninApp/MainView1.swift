import SwiftUI

struct MainView1: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Home()) {
                    Text("Section 1")
                }
                NavigationLink(destination: Fixtures()) {
                    Text("Section 2")
                }
                NavigationLink(destination: Videos()) {
                    Text("Section 3")
                }
                NavigationLink(destination: Shop()) {
                    Text("Section 4")
                }
                NavigationLink(destination: More()) {
                    Text("Section 5")
                }
            }
            .navigationBarTitle("Main View 1")
        }
        Spacer()
        NavigationLink
        {
            SignInView()
                .navigationBarBackButtonHidden(true)
        }
        label:
        {
            HStack(spacing:2)
            {
                Text("Home")
                //Image(systemName: "home")
            }
            .frame(width: UIScreen.main.bounds.width - 32,height: 48)
            .foregroundColor(.white)
            .background(Color("RedSakh"))
            .cornerRadius(10)
            .padding(.top,25)
        }
    }
}

struct MainView1_Previews: PreviewProvider {
    static var previews: some View {
        MainView1()
    }
}
