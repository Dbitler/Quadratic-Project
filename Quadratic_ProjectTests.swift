//
//  Quadratic_ProjectTests.swift
//  Quadratic ProjectTests
//
//  Created by IIT PHYS 440 on 1/20/23.
//

import XCTest

final class Quadratic_ProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testClassicQuadratic() throws {
        let myclassicquadraticinstance = ClassicQuadratic()
        myclassicquadraticinstance.variableA = "1.0"
        myclassicquadraticinstance.variableB = "2.0"
        myclassicquadraticinstance.variableC = "1.0"
        
        let correctdiscriminant = 0.0
        let correctsolutions = -1.0
        
        let discriminant = myclassicquadraticinstance.discriminant
        let solutions = myclassicquadraticinstance.solutionstring.1
        
        XCTAssertEqual(correctsolutions, solutions, accuracy: 1e-14)
        XCTAssertEqual(correctdiscriminant, discriminant, accuracy: 1e-14)
        
    }
    
    func testNewQuadratic() throws {
        let mynewquadraticinstance = NewQuadratic()
        mynewquadraticinstance.variableA = "1.0"
        mynewquadraticinstance.variableB = "1.0"
        mynewquadraticinstance.variableC = "1.0"
        
        let correctdiscriminant = 0.0
        let correctsolutions = -1.0
        
        let discriminant = mynewquadraticinstance.discriminant
        let solutions = mynewquadraticinstance.solutionstring.1
        
        XCTAssertEqual(correctsolutions, solutions, accuracy: 1e-14)
        XCTAssertEqual(correctdiscriminant, discriminant, accuracy: 1e-14)

    }

}
