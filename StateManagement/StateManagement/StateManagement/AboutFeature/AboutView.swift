//
//  AboutView.swift
//  StateManagement
//
//  Created by Ritesh Yadav on 22/03/24.
//

import SwiftUI

struct AboutView: View {
    
    @State var isMoreInfoPresented = false
    
    var body: some View {
        VStack {
            Text("This app was made during\na SwiftUI course 👨‍🎓🧑‍🎓")
                .multilineTextAlignment(.center)
                .padding()
            
            Button("More info?") {
                isMoreInfoPresented = true
            }
        }
        .sheet(isPresented: $isMoreInfoPresented) {
            MoreInfoView()
                .presentationDetents([.fraction(0.25), .medium, .large])
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
