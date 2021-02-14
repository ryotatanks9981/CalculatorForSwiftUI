import SwiftUI

struct OperatorButtons: View {
    
    @ObservedObject var calc: Calc
    
    var body: some View {
        VStack {
            RadiusButton(title: "÷", color: Color.orange) {
                calc.operatorType = .devide
            }
            .padding(3)
            RadiusButton(title: "×", color: Color.orange) {
                calc.operatorType = .multiple
            }
            .padding(3)
            RadiusButton(title: "ー", color: Color.orange) {
                calc.operatorType = .minus
            }
            .padding(3)
            RadiusButton(title: "＋", color: Color.orange) {
                calc.operatorType = .plus
            }
            .padding(3)
            RadiusButton(title: "＝", color: Color.orange) {
                calculate()
            }
            .padding(3)
        }
    }
    
    private func calculate() {
        switch calc.operatorType {
        case .plus:
            calc.num1 += calc.num2
            break
        case .minus:
            calc.num1 -= calc.num2
            break
        case .multiple:
            calc.num1 *= calc.num2
            break
        case .devide:
            calc.num1 /= calc.num2
            break
        case .no:
            break
        case .none:
            break
        }
    }
}

enum OperatorType {
    case plus
    case minus
    case multiple
    case devide
    case no
}
