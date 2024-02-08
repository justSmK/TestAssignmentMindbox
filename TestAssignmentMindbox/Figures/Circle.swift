//
//  Circle.swift
//  TestAssignmentMindbox
//
//  Created by Sergei Semko on 2/8/24.
//

import Foundation
import OSLog

public struct Circle: CircleProtocol {
    public private(set) var radius: Double {
        didSet {
            if radius < 0 {
                Logger.circle.warning(
                    "The radius of the circle is less than zero: \(oldValue). The default value is 0."
                )
                radius = 0
            }
        }
    }
    
    public init?(radius: Double) {
        guard !radius.isLess(than: 0) else {
            Logger.circle.error("Failed to create Circle instance: negative radius value.")
            return nil
        }
        self.radius = radius
    }
    
    public mutating func changeRadius(new value: Double) {
        radius = value
    }
    
    public var area: Double {
        Double.pi * radius * radius
    }
}

// MARK: - FormattableAreaProtocol

extension Circle: FormattableAreaProtocol {}
