import UIKit

//var groceryBag = Set<String>()
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapple")

//var groceryBag = Set(["Apples", "Oranges", "Pineapple"])
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]

for food in groceryBag {
    print(food)
}

let hasBanana = groceryBag.contains("Bananas")
let friendsGroceryBag: Set = ["Bananas", "Cereal", "Milk", "Oranges"]
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

let roommatesGroceryBag: Set = ["Apples", "Bananas", "Cereal", "Toothpaste"]
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

let yourSecondBag = Set(["Berries", "Yogurt"])
let roomatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roomatesSecondBag)

// Challenge
let myCities = Set(["Atlanta", "Chicago","Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

let isSuper = myCities.isSuperset(of: yourCities)


