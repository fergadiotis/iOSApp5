//
//  UIApplication+Extension.swift
//  Watch
//
//  Created by Tassos Fergadiotis on 2025-03-16.
//

import SwiftUI

extension UIApplication {
    var keyWindow: UIWindow? {
        connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .first(where: { $0 is UIWindowScene })
            .flatMap { $0 as? UIWindowScene }?.windows
            .first(where: { $0.isKeyWindow })
    }
    
    var safeAreaInsets: UIEdgeInsets {
        keyWindow?.safeAreaInsets ?? UIEdgeInsets.zero
    }
    
    var safeAreaTop: CGFloat {
        safeAreaInsets.top
    }
    
    var safeAreaBottom: CGFloat {
        safeAreaInsets.bottom
    }
}
