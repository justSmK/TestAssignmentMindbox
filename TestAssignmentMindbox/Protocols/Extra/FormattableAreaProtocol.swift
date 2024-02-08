//
//  FormattableAreaProtocol.swift
//  TestAssignmentMindbox
//
//  Created by Sergei Semko on 2/8/24.
//

import Foundation

public protocol FormattableAreaProtocol: ShapeProtocol {
    var formattedAreaString: String { get }
    var formattedAreaDouble: Double { get }
}

extension FormattableAreaProtocol {
    public var formattedAreaDouble: Double {
        (area * 100).rounded() / 100
    }
    
    public var formattedAreaString: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        
        let areaValue = NSNumber(value: self.area)
        return formatter.string(from: areaValue) ?? ""
    }
}
