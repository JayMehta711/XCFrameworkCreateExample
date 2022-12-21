//
//  GrocerybagTests.swift
//  GrocerybagTests
//
//  Created by Jay Mehta on 21/12/22.
//

import XCTest
@testable import Grocerybag

final class GrocerybagTests: XCTestCase {

    var cart: Basket = Basket()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    
    func testCartCount() {
        cart.addItem("Apple")
        cart.addItem("Apple")
        cart.addItem("Banana")
        XCTAssertEqual(cart.count, 2)
    }
    
    func testAddItem() {
        cart.addItem("Orange")
        XCTAssertEqual(cart.counts(for: "Orange"), 1)
    }
    
    func testRemoveItem() {
        cart.removeItem("Orange")
        XCTAssertEqual(cart.counts(for: "Orange"), 0)
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
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
