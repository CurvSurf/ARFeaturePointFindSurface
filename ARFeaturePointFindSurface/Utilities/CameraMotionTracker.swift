//
//  CameraMotionTracker.swift
//  ARFeaturePointFindSurface
//
//  Created by CurvSurf-SGKim on 9/24/25.
//

import ARKit
import simd

struct CameraMotionChangeTracker {
    
    private var position: simd_float3 = .zero
    private var distanceRemaining: Float
    
    private let minDistance: Float
    private let radius: Float
    
    init(minDistance: Float, radius: Float) {
        self.minDistance = minDistance
        self.distanceRemaining = minDistance
        self.radius = radius
    }
    
    var distanceProgress: Float {
        (minDistance - distanceRemaining) / minDistance
    }
    
    mutating func hasCameraFulfillRequirements(_ camera: ARCamera, _ count: Int) -> Bool {
        
        guard distanceRemaining > 0 else { return true }
        
        let cameraPosition = camera.position
        let cameraDirection = camera.direction
        
        let position = cameraPosition + cameraDirection * radius
        let oldPosition = self.position
        self.position = position
        if count > 150 {
            let distance = distance(position, oldPosition)
            distanceRemaining = max(distanceRemaining - distance, 0)
        }
        return distanceRemaining == 0
    }
}
