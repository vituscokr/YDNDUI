//
//  SwiftUIView.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/31.
//

import SwiftUI

struct MyView: View {
    
    @State var scale : CGFloat = 1.0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
