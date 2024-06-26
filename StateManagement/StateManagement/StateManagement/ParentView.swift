//
//  ParentView.swift
//  StateManagement
//
//  Created by Ritesh Yadav on 22/03/24.
//

import SwiftUI

struct ParentView: View {
    
    enum Tab: Hashable {
        case todos
        case about
    }
    
    @State var selectedTab: Tab = .todos

    var body: some View {
        TabView(selection: $selectedTab) {
            TodoItemsListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("TODOs")
                }
                .tag(Tab.todos)
            
            AboutView()
                .tabItem {
                    Image(systemName: "questionmark.circle.fill")
                    Text("About")
                }
                .tag(Tab.about)
        }
        .onChange(of: selectedTab) { newValue in
            print(newValue)
        }
    }
}
