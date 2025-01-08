
import SwiftUI

struct GreetingView: View {
    @Binding var name: String
    @State var isEditing: Bool = false
    
    var body: some View {
        
        HStack {
            
            if (isEditing) {
                
                TextField("Your Name", text: $name)
                
                Spacer()
                
                Button {
                    isEditing = false
                } label: {
                    Image(systemName: "checkmark")
                }
                
            } else {
                
                Text("Hello \(name.isEmpty ? "World" : name)")
                
                Spacer()
                
                Button {
                    isEditing = true
                } label: {
                    Image(systemName: "pencil")
                }
            }
                
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    GreetingView(name: .constant("Jana"))
}
