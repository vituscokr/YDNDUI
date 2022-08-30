//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/08/30.
//

import SwiftUI

public class CheckBoxModel : ObservableObject {
    
    public @Published var items: [CheckBoxData]

    public init(items: [CheckBoxData] ) {
        self.items = items 
    }
}
