
import SwiftUI

struct TodoItemView: View {
    @Binding var todo: TodoItem

    var body: some View {
        HStack {
            Image(systemName: todo.done ? "checkmark.circle" : "circle")

            Text(todo.text)
                .strikethrough(todo.done)

        }
        .onTapGesture {
            todo.done.toggle()
        }
    }
}

#Preview {
    TodoItemView(todo: .constant(TodoItem(text: "lernen")))
}
