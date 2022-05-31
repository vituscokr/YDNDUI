//
//  SafeAreaInsets.swift
//  SusudaB2B
//
//  Created by Gyeongtae Nam on 2022/03/17.
//

import Foundation
import UIKit
import SwiftUI

private struct SafeAreaInsetsKey: EnvironmentKey {
    static var defaultValue: EdgeInsets {
        
//        return (UIApplication
//        .shared
//        .connectedScenes
//        .compactMap { $0 as? UIWindowScene }
//        .flatMap { $0.windows }
//        .first { $0.isKeyWindow }
//        ?.safeAreaInsets ?? .zero ).insets
        
        
        let keywindow = UIApplication
        .shared
        .connectedScenes
        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
        .first { $0.isKeyWindow }
        
        return (keywindow?.safeAreaInsets ?? .zero).insets
        

       // (UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.safeAreaInsets ?? .zero).insets
    }
}

extension EnvironmentValues {
    var safeAreaInsets: EdgeInsets {
        self[SafeAreaInsetsKey.self]
    }
}
private extension UIEdgeInsets {
    var insets: EdgeInsets {
        EdgeInsets(top: top, leading: left, bottom: bottom, trailing: right)
    }
}
