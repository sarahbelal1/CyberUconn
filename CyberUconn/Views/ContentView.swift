import SwiftUI

struct ContentView: View {

    enum Tab {
        case home
        case list
        case quiz
    }
    @State private var selection: Tab = .home

   
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
            
            CyberList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
            WelcomeView()
                .tabItem {
                    Label("Quiz", systemImage: "star")
                }
                .tag(Tab.quiz)
                }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
