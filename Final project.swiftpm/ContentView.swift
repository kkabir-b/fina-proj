import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            hmView()
                .tabItem{
                    Label("Home page",systemImage:"person")
                
            }
            BinView()
                .tabItem{
                    Label("Binary to Denary",systemImage:"bolt.circle")}
        }
    }
}
