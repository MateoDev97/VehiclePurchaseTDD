//
//  main.swift
//  Practice
//
//  Created by Mateo Ortiz on 18/03/23.
//

import Foundation

func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    
    var message = ""
    
    let montlyPayment = (price/12)/5
    
    if monthlyBudget >= montlyPayment {
        message = "Yes! I'm getting a \(vehicle)"
    } else {
        message = "Darn! No \(vehicle) for me"
        
        let beFrugalReminder = 100 - ((monthlyBudget*100)/montlyPayment)
        if beFrugalReminder > 0 && beFrugalReminder <= 10 {
            message = "I'll have to be frugal if I want a \(vehicle)"
        }
    }
    
    return message
}

func licenseType(numberOfWheels wheels: Int) -> String {
    
    var message = ""
    
    if wheels >= 2 && wheels <= 3 {
        message = "You will need a motorcycle license for your vehicle"
    } else if wheels >= 4 && wheels <= 6 {
        message = "You will need an automobile license for your vehicle"
    } else if wheels == 18 {
        message = "You will need a commercial trucking license for your vehicle"
    } else {
        message = "We do not issue licenses for those types of vehicles"
    }
    
    return message
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    
    var result = 0
    if yearsOld >= 10 {
        result = 25
    } else {
        
        let basePrice = (msrp > 25_000) ? msrp : 25_000
        let percentageBasePrice = Double(basePrice) - (Double(basePrice) * 0.1 * Double(yearsOld))
        
        result = Int(percentageBasePrice/100)
    }
    
    return result
}
