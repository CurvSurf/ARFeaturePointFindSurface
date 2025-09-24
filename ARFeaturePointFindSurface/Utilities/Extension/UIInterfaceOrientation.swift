//
//  UIInterfaceOrientation.swift
//  ARFeaturePointFindSurface
//
//  Created by CurvSurf-SGKim on 8/27/25.
//

import SwiftUI
import UIKit

extension UIInterfaceOrientation {
    static var currentValue: UIInterfaceOrientation {
        let windowScene = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first(where: { $0.activationState == .foregroundActive })
        
        if let windowScene {
            return windowScene.effectiveGeometry.interfaceOrientation
        } else {
            return .unknown
        }
    }
}
