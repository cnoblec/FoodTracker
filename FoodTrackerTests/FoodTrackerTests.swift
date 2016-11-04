//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Carlos Noble Curveira on 2016-10-25.
//  Copyright © 2016 Carlos Noble Curveira. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: Foodtracker tests
    func testMealInitialization() {
        // success
        let potentialMeal = Meal(name: "new", photo: nil, rating: 5)
        XCTAssertNotNil(potentialMeal)
        // fail
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        // fail again
        let badRating = Meal(name: "bad", photo: nil, rating: -1)
        XCTAssertNil(badRating, "negative rating is invalid")
    }
}
