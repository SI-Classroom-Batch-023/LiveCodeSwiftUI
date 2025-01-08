
import Foundation

struct TodoItem: Identifiable {
    let id = UUID().uuidString
    let text: String
    var done: Bool = false
}
