//
//  CircleTests.swift
//  TestAssignmentMindboxTests
//
//  Created by Sergei Semko on 2/8/24.
//

import XCTest
@testable import TestAssignmentMindbox

final class CircleTests: XCTestCase {

    var circle: CircleProtocol!
    
    override func setUp() {
        super.setUp()
        circle = Circle(radius: 10)
    }
    
    override func tearDown() {
        circle = nil
        super.tearDown()
    }
    
    func testCircleArea() {
        let expectation = 314.1592653589793
        let area = circle.area
        XCTAssertEqual(area, expectation, "Некорректно считается площадь")
    }
    
    func testCircleFormattedAreaString() {
        let expectation = "314.16"
        let area = circle.formattedAreaString
        XCTAssertEqual(area, expectation, "Некорректное форматирование в строку")
    }
    
    func testCircleFormattedAreaDouble() {
        let expectation = 314.16
        let area = circle.formattedAreaDouble
        XCTAssertEqual(area, expectation, "Некорректное форматирование в число с плавающей точкой")
    }
    
    func testZeroRadiusCircleArea() {
        circle = Circle(radius: 0)
        let expectation: Double = 0
        let radius = circle.radius
        let area = circle.area
        XCTAssertEqual(radius, expectation, "Радиус не соотвествует ожидаемому")
        XCTAssertEqual(area, expectation, "Площадь не соответсвуте ождиаемому")
    }
    
    func testNegativeRadiusCircleArea() {
        let negativeRadiusCircle = Circle(radius: -10)
        XCTAssertNil(negativeRadiusCircle, "Круг с отрицательным радиусом не должен существовать")
    }

    func testCircleChangeRadiusPositive() {
        let expectation: Double = 2
        circle.changeRadius(new: 2)
        let radius = circle.radius
        XCTAssertEqual(radius, expectation, "Некорректно изменяется радиус")
    }
    
    func testCircleChangeRadiusNegative() {
        let expectation: Double = 0
        circle.changeRadius(new: -2)
        let radius = circle.radius
        XCTAssertEqual(radius, expectation, "Некорректно изменяется радиус при установке отрицательного значения")
    }
}
