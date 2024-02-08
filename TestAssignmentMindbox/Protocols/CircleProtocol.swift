//
//  CircleProtocol.swift
//  TestAssignmentMindbox
//
//  Created by Sergei Semko on 2/8/24.
//

import Foundation

public protocol CircleProtocol: ShapeProtocol, FormattableAreaProtocol {
    var radius: Double { get }
    
    init?(radius: Double)
    
    mutating func changeRadius(new value: Double)
}
