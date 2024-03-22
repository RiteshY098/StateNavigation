//
//  TodoItemDetailView.swift
//  StateManagement
//
//  Created by Ritesh Yadav on 22/03/24.
//

import SwiftUI

struct TodoItemDetailView: View {
    
    @Binding var item: TodoItem
    
    var body: some View {
        Form {
            TextField("Title", text: $item.title)
                .font(.headline)
            TextField("Description", text: $item.description.whenEmpty(""))
                .font(.subheadline)
        }
        .navigationTitle("Edit")
    }
}

struct TodoItemDetailView_Previews: PreviewProvider {
    
    static let todoItem = TodoItem(
        id: UUID(),
        title: "Buy some bread 🥖"
    )
    
    static var previews: some View {
        StatefulPreviewWrapper(todoItem) { todoItem in
            TodoItemDetailView(item: todoItem)
        }
    }
}
