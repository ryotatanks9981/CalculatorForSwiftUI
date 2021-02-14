import SwiftUI

struct KeyboardView: View {
    
    @ObservedObject var calc: Calc
    
    var body: some View {
        HStack {
            VStack {
                OtherOperatorButtons(calc: calc)
                NumberPlateView(calc: calc)
                    .padding()
            }
            OperatorButtons(calc: calc)
        }
        .accentColor(.white)
        .font(.title)
    }
}
