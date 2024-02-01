//
//  CustomShape.swift
//  Spar
//
//  Created by ily.pavlov on 01.02.2024.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Начальная точка в левом верхнем углу
        path.move(to: CGPoint(x: 0, y: 10))
        
        // Линия к правому верхнему углу
        path.addQuadCurve(to: CGPoint(x: 40, y: 5), control: CGPoint(x: rect.width * 0.7, y: rect.height * 0.3))
        
        // Кривая к правому нижнему углу с контрольной точкой
        path.addLine(to: CGPoint(x: 45, y: 30))

        // Линия к левому нижнему углу
        path.addQuadCurve(to: CGPoint(x: 0, y: 27), control: CGPoint(x: rect.width * 0.7, y: rect.height * 0.9))

        // Замыкание контура
        path.closeSubpath()
        
        return path
    }
}
