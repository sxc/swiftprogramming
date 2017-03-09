//: Playground - noun: a place where people can play

import Cocoa

let volunteerCounts = [1, 3, 40,32,2,53,77,13]

//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//let volunteersSorted = volunteerCounts.sorted(by: sortAscending)

//let volunteersSorted = volunteerCounts.sorted(by:
//    {i: Int, j: Int} -> Bool in
//    return i < j
//})

//let volunteersSorted = volunteerCounts.sorted(by: { i, j in i < j })
//volunteersSorted

//let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1 })
//volunteersSorted

let volunteersSorted = volunteerCounts.sorted{ $0 < $1}
volunteersSorted

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int,
//                    toExistingLights existingLights:
//        Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}
//var stoplights = 4
//let townPlanByAddingLightsToExistingLights = makeTownGrand()
//stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
//print("Knowhere has \(stoplights) stoplights.")

func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}

func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

var stoplights = 4

if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 1_000, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}

if let newTownPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 11_000, condition: evaluate) {
    stoplights = newTownPlanByAddingLightsToExistingLights(4, stoplights)
}

print("Knowhere has \(stoplights) stoplights.")

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
    
}

var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
growBy(500)
growBy(500)
growBy(500)
currentPopulation = growBy(500)
let anotherGrowBy = growBy
anotherGrowBy(500)
var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowBy(10_000)
currentPopulation

let precinctPopulations = [1244, 2021, 2157]
let projectedPopualations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopualations

let bigPreojections = projectedPopualations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigPreojections

let totalProjection = projectedPopualations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}
totalProjection

print(volunteerCounts)
volunteerCounts.sorted()
print(volunteerCounts)


let totalProjection2 = projectedPopualations.reduce(0){ $0 + $1 }
print(totalProjection2)

