
import SwiftUI

struct AddTodoView: View {
    
    @State var newTodoText: String = ""
    @Binding var todoList: [TodoItem]

    var body: some View {
        VStack {
            HStack {
                TextField("New todo", text: $newTodoText)
                    .onSubmit(submitTodo)
//                    .onSubmit {
//                        submitTodo()
//                    }

                Button {
                    submitTodo()
                } label: {
                    Image(systemName: "arrow.up")
                }
            }
            .padding(.horizontal)
        }
    }

    private func submitTodo() {
        todoList.append(TodoItem(text: newTodoText))
        newTodoText = ""
    }
}

#Preview {
    AddTodoView(todoList: .constant([]))
}
