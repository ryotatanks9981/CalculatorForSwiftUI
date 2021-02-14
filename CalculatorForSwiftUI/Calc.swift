import SwiftUI

class Calc: ObservableObject {
    @Published var num1: Int = 0
    @Published var num2: Int = 0
    @Published var operatorType: OperatorType? = .no
    @Published var target = Target.no
}


enum Target {
    case num1
    case num2
    case no
}
