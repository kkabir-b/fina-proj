import SwiftUI

struct BinView: View{
    @State var deneryq = Int.random(in: 0...255)
    @State var inputanswer = 0
    var body: some View{
        ZStack{
            Rectangle()
                .fill(.clear)
                .background(
                    LinearGradient(gradient:Gradient(colors:[.blue ,.teal,Color(red: 0.4627, green: 0.8392, blue: 1.0),.white]),startPoint:.top,endPoint:.bottom)
                )
            
            VStack {
                Text("Change this number to binary")
                    .font(.title)
                    .padding()
                
                Text("\(deneryq)")
                
                TextField("Please enter your binary convertion,", value: $inputanswer,format: .number)
                    .textFieldStyle(.roundedBorder)
                    .border(.blue, width: 2)
                    .keyboardType(.decimalPad)
                    .padding()
                if (String(deneryq,radix: 2) == String(inputanswer)){
                        Text("Correct")
                        .padding()
                    Button("Next num"){
                        deneryq = Int.random(in:0...255) 
                    }
                    .buttonStyle(.bordered)
                    }
                else if (String(inputanswer) == "0" || String(inputanswer) == ""){
                    Text("Enter your num")
                }
                else{
                        Text("Wrong")
                    
                }
                    
                
            }
        }
    }
}
