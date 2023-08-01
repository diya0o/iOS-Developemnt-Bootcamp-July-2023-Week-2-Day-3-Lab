//
//  SecondView.swift
//  Week 2 Lab 3
//
//  Created by Diya Alowdah on 01/08/2023.
//

import SwiftUI

struct SecondView: View {
    @Binding var data : String
    @Binding var field : String
    
    var body: some View {
        Text(data)
        
        
        TextField("TextField", text: ($field))
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(data: .constant(""), field: .constant(""))
    }
}
