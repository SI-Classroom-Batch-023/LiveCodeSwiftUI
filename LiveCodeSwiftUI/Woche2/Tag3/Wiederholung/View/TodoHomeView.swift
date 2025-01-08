
import SwiftUI

struct TodoHomeView: View {

    @State var name: String = ""
    
    var body: some View {
        VStack {
            GreetingView(name: $name)
            TodoListView(name: name)
        }
    }
}

#Preview {
    TodoHomeView()
}
