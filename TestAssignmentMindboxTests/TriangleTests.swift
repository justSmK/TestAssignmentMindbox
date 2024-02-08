//
//  TriangleTests.swift
//  TestAssignmentMindboxTests
//
//  Created by Sergei Semko on 2/8/24.
//

import XCTest
@testable import TestAssignmentMindbox

final class TriangleTests: XCTestCase {

    var triangle: TriangleProtocol!
    
    override func setUp() {
        super.setUp()
        triangle = Triangle(sideA: 10, sideB: 10, sideC: 10)
    }
    
    override func tearDown() {
        triangle = nil
        super.tearDown()
    }

    func testTriangleArea() {
        let expectations = 43.30127018922193
        let area = triangle.area
        XCTAssertEqual(area, expectations, "Некорректно считается площадь")
        XCTAssertFalse(triangle.isRightAngled, "Треугольник не является прямоугольным")
    }
    
    func testTriangleFormattedAreaString() {
        let expectation = "43.3"
        let area = triangle.formattedAreaString
        XCTAssertEqual(area, expectation, "Некорректное форматирование в строку")
    }
    
    func testTriangleFormattedAreaDouble() {
        let expectation = 43.30
        let area = triangle.formattedAreaDouble
        XCTAssertEqual(area, expectation, "Некорректное форматирование в число с плавающей точкой")
    }
    
    func testNonExistenceTriangle() {
        let nonExistentTriangle = Triangle(sideA: 1, sideB: 1, sideC: 10)
        XCTAssertNil(nonExistentTriangle, "Треугольника с такими параметрами не может существовать")
    }
    
    func testTriangle() {
        triangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
        let rightAngled = triangle.isRightAngled
        XCTAssertTrue(rightAngled, "Треугольник должен быть прямоугольным")
    }
}
