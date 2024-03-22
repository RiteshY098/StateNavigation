//
//  TodoItem.swift
//  StateManagement
//
//  Created by Ritesh Yadav on 16/03/24.
//

import Foundation

struct TodoItem: Hashable, Codable, Identifiable {
    let id: UUID
    var title: String
    var description: String?
    var isDone: Bool = false
}
