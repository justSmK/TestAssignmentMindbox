//
//  Triangle.swift
//  TestAssignmentMindbox
//
//  Created by Sergei Semko on 2/8/24.
//

import Foundation
import OSLog

public struct Triangle: TriangleProtocol {
    public private(set) var sideA: Double
    public private(set) var sideB: Double
    public private(set) var sideC: Double
    
    public init?(sideA: Double, sideB: Double, sideC: Double) {
        guard sideA + sideB > sideC, sideA + sideC > sideB, sideB + sideC > sideA else {
            Logger.triangle.error("Failed to create Triangle instance: The triangle cannot exist")
            return nil
        }
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    
    public var area: Double {
        // Полупериметр треугольника
        let s = (sideA + sideB + sideC) / 2
        // Формула Герона
        return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC))
    }
    
    public var isRightAngled: Bool {
        let sides = [sideA, sideB, sideC].sorted()
        // Проверка теоремы Пифагора с небольшой погрешностью для учета ошибок округления
        return abs(sides[2] * sides[2] - (sides[0] * sides[0] + sides[1] * sides[1])) < 0.000001
    }
}

// MARK: - FormattableAreaProtocol

extension Triangle: FormattableAreaProtocol {}
