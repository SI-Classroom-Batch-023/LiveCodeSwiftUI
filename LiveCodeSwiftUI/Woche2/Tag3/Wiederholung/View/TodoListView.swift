
import SwiftUI

struct TodoListView: View {
    
    @State var todoList: [TodoItem] = [
        TodoItem(text: "Lernen")
    ]
    var name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(name.isEmpty ? "" : name + "'s ")Todos")
                .font(.title3)
                .padding(.bottom)
            
            ForEach($todoList){ $todo in
                TodoItemView(todo: $todo)
            }
            
            Spacer()
            
            
            AddTodoView(todoList: $todoList)
        }
        .padding(.horizontal)
    }
}

#Preview {
    TodoListView(name: "Test")
}
