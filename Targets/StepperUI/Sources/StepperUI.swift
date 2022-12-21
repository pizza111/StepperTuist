import SwiftUI

public final class StepperUI {
    public static func SetUpStepper() {
        Home()
    }
}

struct Home: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        VStack {
            Text("Current number: \(vm.currentCount)")
            
            HStack {
                Button("Minus number", action: vm.minusNumber)
                Button("Plus number", action: vm.plusNUmber)
            }
        }
    }
}

class ViewModel: ObservableObject {
    @Published var currentCount = 0
    
    func minusNumber() {
        currentCount -= 1
    }
    
    func plusNUmber() {
        currentCount += 1
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
