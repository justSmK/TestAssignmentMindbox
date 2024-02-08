//
//  Logget+Extensions.swift
//  TestAssignmentMindbox
//
//  Created by Sergei Semko on 2/8/24.
//

import Foundation
import OSLog

extension Logger {
    /// Using your bundle identifier is a great way to ensure a unique identifier.
    private static var subsystem = Bundle.main.bundleIdentifier!

    static let circle = Logger(subsystem: subsystem, category: "circle")    
    static let triangle = Logger(subsystem: subsystem, category: "triangle")
}
