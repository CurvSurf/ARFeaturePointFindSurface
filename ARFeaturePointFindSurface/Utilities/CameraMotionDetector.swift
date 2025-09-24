//
//  CameraMotionDetector.swift
//  ARFeaturePointFindSurface
//
//  Created by SG Kim on 8/30/25.
//

import ARKit
import simd

struct CameraMotionDetector {
    private var position: simd_float3 = .zero
    private var direction: simd_float3 = .zero
    
    private let minDistanceSquared: Float
    private let minCosAngle: Float
    
    init(minDistance: Float, minAngle: Float) {
        self.minDistanceSquared = minDistance * minDistance
        self.minCosAngle = cos(minAngle)
    }
    
    mutating func hasCameraMovedEnough(_ camera: ARCamera) -> Bool {
        let position = camera.position
        let direction = camera.direction
        
        let positionChanged = distance_squared(position, self.position) < minDistanceSquared
        let directionChanged = dot(direction, self.direction) < minCosAngle
        
        if positionChanged || directionChanged {
            self.position = position
            self.direction = direction
            return true
        }
        return false
    }
}
