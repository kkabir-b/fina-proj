import SwiftUI

struct hmView: View {
    var body: some View{
        ZStack {
            Rectangle()
                .fill(.clear)
                .background(
                    LinearGradient(gradient:Gradient(colors:[.black,.blue ,.teal,Color(red: 0.4627, green: 0.8392, blue: 1.0),.white]),startPoint:.top,endPoint:.bottom)
                )
            VStack{Image("Logo")
                    .resizable()
                    .frame(width:250,height:250)
                    .padding()
                
                Text("This app was sponsored by the ARAV BENDE corporation")}
        }
        
    }
}
