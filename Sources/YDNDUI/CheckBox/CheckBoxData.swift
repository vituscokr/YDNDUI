//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/08/30.
//

import Foundation


public struct CheckBoxData: Identifiable {
    public var id = UUID()
    
    var title: String
    var index : Int
    var value: String
    var isChecked: Bool
    
    
    public init() {
        id = UUID()
        title = ""
        index = -1
        value = ""
        isChecked = false
    }
    
    
}
