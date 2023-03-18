//
//  PracticeTests.swift
//  PracticeTests
//
//  Created by Mateo Ortiz on 18/03/23.
//

import XCTest

final class PracticeTests: XCTestCase {

    func testCanIBuy1() {
        let result = canIBuy(vehicle: "1974 Ford Pinto", price: 516.32, monthlyBudget: 100.00)
        XCTAssertEqual(result, "Yes! I'm getting a 1974 Ford Pinto")
    }
    
    func testCanIBuy2() {
        let result = canIBuy(vehicle: "2011 Bugatti Veyron", price: 2_250_880.00, monthlyBudget: 10000.00)
        XCTAssertEqual(result, "Darn! No 2011 Bugatti Veyron for me")
    }
    
    func testCanIBuy3() {
        let result = canIBuy(vehicle: "2020 Indian FTR 1200", price: 12_500, monthlyBudget: 200)
        XCTAssertEqual(result, "I'll have to be frugal if I want a 2020 Indian FTR 1200")
    }

    
    func testLicenceType1() {
        let result = licenseType(numberOfWheels: 2)
        XCTAssertEqual(result, "You will need a motorcycle license for your vehicle")
    }
    
    func testLicenceType2() {
        let result = licenseType(numberOfWheels: 6)
        XCTAssertEqual(result, "You will need an automobile license for your vehicle")
    }
    
    func testLicenceType3() {
        let result = licenseType(numberOfWheels: 18)
        XCTAssertEqual(result, "You will need a commercial trucking license for your vehicle")
    }
    
    func testLicenceType4() {
        let result = licenseType(numberOfWheels: 0)
        XCTAssertEqual(result, "We do not issue licenses for those types of vehicles")
    }
    
    func testRegistrationFee1() {
        let result = registrationFee(msrp: 2_250_800, yearsOld: 9)
        XCTAssertEqual(result, 2250)
    }
    
    func testRegistrationFee2() {
        let result = registrationFee(msrp: 25_000, yearsOld: 3)
        XCTAssertEqual(result, 175)
    }
    
    func testRegistrationFee3() {
        let result = registrationFee(msrp: 34_000, yearsOld: 30)
        XCTAssertEqual(result, 25)
    }
}
