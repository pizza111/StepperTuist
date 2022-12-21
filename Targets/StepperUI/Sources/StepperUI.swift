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
                Button("Minus number") {
                    vm.currentCount -= 1
                }
                Button("Plus number") {
                    vm.currentCount += 1
                }
            }
        }
    }
}

class ViewModel: ObservableObject {
    @Published var currentCount = 0
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
