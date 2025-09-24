//
//  AppState.swift
//  ARFeaturePointFindSurface
//
//  Created by CurvSurf-SGKim on 9/24/25.
//

import SwiftUI
import Metal
import MetalKit
import ARKit

import FindSurface_iOS

@Observable
final class AppState: MetalViewDelegate {
    
    var device: MTLDevice
    
    init() {
        let device = MTLCreateSystemDefaultDevice()!
        
        self.device = device
    }
    
    func configure(view: MTKView, context: Context) {
        
    }
    
    func resize(view: MTKView, drawableSize: CGSize) {
        
    }
    
    func draw(view: MTKView) {
        
    }
}
