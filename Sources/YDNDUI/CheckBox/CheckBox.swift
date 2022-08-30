//
//  SwiftUIView.swift
//  
//
//  Created by Gyeongtae Nam on 2022/08/29.
//

import SwiftUI

public struct CheckBoxView: View {
    
    @State var data : CheckBoxData
    let imageSize :CGSize
    var action: () -> ()

    public init(data: State<CheckBoxData>,
                imageSize: CGSize = CGSize(width: 32, height: 32),
                action : @escaping () -> Void  ) {
       
        self._data = data
        self.imageSize = imageSize
        self.action = action
    }
    
    public var body: some View {
        Button(action: action){
            EmptyView()
        }
        .buttonStyle(LSSButtonStyle(change: { state in
            Image( data.isChecked ? "checked" : "unchecked")
                .resizable()
                .scaledToFit()
                .frame(width: imageSize.width, height: imageSize.height, alignment: .center)
        }))
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    
    static var previews: some View {
        CheckBoxView(data: CheckBoxData()) {
            
        }
    }
}

