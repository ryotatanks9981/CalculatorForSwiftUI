import SwiftUI

struct ContentView: View {
    
    @ObservedObject var calc = Calc()
    
    var body: some View {
        VStack {
            Spacer()
            Text(String(calc.num1))
                .font(.system(size: 70))
                .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 100, alignment: .trailing)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .onTapGesture {
                    calc.target = .num1
                }
            Text(String(calc.num2))
                .font(.system(size: 70))
                .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 100, alignment: .trailing)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .onTapGesture {
                    calc.target = .num2
                }
            KeyboardView(calc: calc)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

