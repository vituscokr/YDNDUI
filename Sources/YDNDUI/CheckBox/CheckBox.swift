//
//  SwiftUIView.swift
//  
//
//  Created by Gyeongtae Nam on 2022/08/29.
//

import SwiftUI

public struct CheckBoxView: View {
    
    @Binding var checked : Bool
    
    let imageSize :CGSize
    
    init(checked : Binding<Bool> ,
         imageSize: CGSize = CGSize(width: 32, height: 32)) {
        self._checked = checked
        self.imageSize = imageSize
    }
    
    public var body: some View {
        Image( checked ? "checked" : "unchecked")
            .resizable()
            .scaledToFit()
            .frame(width: imageSize.width, height: imageSize.height, alignment: .center)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView(checked: .constant(false))
    }
}
