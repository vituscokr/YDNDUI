//
//  SwiftUIView.swift
//  
//
//  Created by Gyeongtae Nam on 2022/08/29.
//

import SwiftUI

public struct CheckBoxView: View {
    
    @Binding var isChecked : Bool
    let imageSize :CGSize
    var action: () -> ()

    public init(isChecked: Binding<Bool>,
                imageSize: CGSize = CGSize(width: 32, height: 32),
                action : @escaping () -> Void  ) {
       
        self._isChecked = isChecked
        self.imageSize = imageSize
        self.action = action
    }
    
    public var body: some View {
        Button(action: action){
            EmptyView()
        }
        .buttonStyle(LSSButtonStyle(change: { state in
            Image( isChecked ? "checked" : "unchecked")
                .resizable()
                .scaledToFit()
                .frame(width: imageSize.width, height: imageSize.height, alignment: .center)
        }))
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CheckBoxView(isChecked: .constant(false)) {
            
        }
    }
}

