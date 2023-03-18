# VehiclePurchaseTDD

## Instructions
In this exercise you're going to write some code to help you prepare to buy a new vehicle.

You have three tasks, one to help you determine the price of the vehicle you can afford, one to determine what kind of license you will need to get, and one to help you compute your yearly registration fees.


### Task 1
Compute whether or not you can afford the monthly payments on a given car

The auto dealers in your town are all running a five year, 0% interest promotion that you would like to take advantage of. Implement the canIBuy(vehicle:price:monthlyBudget:) function that takes the name of the vehicle you are looking at, the price of the car, and your monthly budget and returns a string letting you know whether you can afford the car or not, if the monthly payment is within 10% above your monthly budget you will want to return a special reminder to be frugal:

```swift
canIBuy(vehicle: "1974 Ford Pinto", price: 516.32, monthlyBudget: 100.00)
    // => "Yes! I'm getting a 1974 Ford Pinto"
canIBuy(vehicle: "2011 Bugatti Veyron", price: 2_250_880.00, monthlyBudget: 10000.00)
    // => "Darn! No 2011 Bugatti Veyron for me"
canIBuy(vehicle: "2020 Indian FTR 1200", price: 12_500, monthlyBudget: 200)
    // => "I'll have to be frugal if I want a 2020 Indian FTR 1200"
```