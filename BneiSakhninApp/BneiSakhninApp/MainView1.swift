import SwiftUI

struct MainView1: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("RedSakh1"))
    }

    var body: some View {
        VStack{
        TabView {
            // View 1
            Home()
                .tabItem
                {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            // View 2
            Fixtures()
                .tabItem
                {
                    Image(systemName: "calendar.circle.fill")
                    Text("Fixtures")
                }
                .tag(1)
            
            // View 3
            Videos()
                .tabItem {
                    Image(systemName: "video")
                    Text("Videos")
                }
                .tag(2)
                .padding(10)
            
            // View 4
            Shop()
                .tabItem {
                    Image(systemName: "basket.fill")
                    Text("Shop")
                }
                .tag(3)
            
            // View 5
            More()
                .tabItem {
                    Image(systemName: "plus")
                    Text("More")
                }
        }
    }
    .onAppear()
        {
        UITabBar.appearance().backgroundColor = UIColor(Color("RedSakh"))
        }
        .tint(Color.white)
    }
}

struct MainView1_Previews: PreviewProvider {
    static var previews: some View {
        MainView1()
    }
}
