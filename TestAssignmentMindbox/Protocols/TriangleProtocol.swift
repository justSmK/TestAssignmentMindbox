//
//  TriangleProtocol.swift
//  TestAssignmentMindbox
//
//  Created by Sergei Semko on 2/8/24.
//

import Foundation

public protocol TriangleProtocol: ShapeProtocol, FormattableAreaProtocol {
    var sideA: Double { get }
    var sideB: Double { get }
    var sideC: Double { get }
    
    init?(sideA: Double, sideB: Double, sideC: Double)
    
    var isRightAngled: Bool { get }
}
