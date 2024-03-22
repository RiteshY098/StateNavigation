//
//  MoreInfoView.swift
//  StateManagement
//
//  Created by Ritesh Yadav on 22/03/24.
//

import SwiftUI

struct MoreInfoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct MoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoView()
    }
}
