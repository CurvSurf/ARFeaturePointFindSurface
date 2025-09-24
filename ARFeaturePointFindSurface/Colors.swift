//
//  Untitled.swift
//  ARFeaturePointFindSurface
//
//  Created by CurvSurf-SGKim on 9/24/25.
//

import SwiftUI

extension simd_float3 {
    static var planeColor: simd_float3 { .init(0.93, 0.30, 0.33) }
    static var sphereColor: simd_float3 { .init(0.73, 0.85, 0.22) }
    static var cylinderColor: simd_float3 { .init(0.20, 0.80, 0.60) }
    static var coneColor: simd_float3 { .init(0.22, 0.45, 0.95) }
    static var torusColor: simd_float3 { .init(0.75, 0.35, 0.95) }
}

extension simd_float3 {
    static var planeInlierColor: simd_float3 { .init(0.10, 0.75, 0.80) }
    static var sphereInlierColor: simd_float3 { .init(0.35, 0.30, 0.85) }
    static var cylinderInlierColor: simd_float3 { .init(0.90, 0.30, 0.70) }
    static var coneInlierColor: simd_float3 { .init(0.95, 0.60, 0.20) }
    static var torusInlierColor: simd_float3 { .init(0.55, 0.85, 0.20) }
}

extension Color {
    static var planeUI: Color { .red }
    static var sphereUI: Color { .green }
    static var cylinderUI: Color { .cyan }
    static var coneUI: Color { .blue }
    static var torusUI: Color { .purple }
}
