import UIKit

let volunteerCounts = [1,3,40,32,2,53,77,13]
//
//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//let volunteersSorted = volunteerCounts.sorted(by: sortAscending)

//let volunteersSorted = volunteerCounts.sorted(by: {
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})

//let volunteersSorted = volunteerCounts.sorted(by: {i, j in i < j})

//let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1})

let volunteersSorted = volunteerCounts.sorted { $0 < $1}

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int,
//                    toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}
//
//var stoplights = 4
//let townPlanByAddingLightsToExistingLights = makeTownGrand()
//stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
//print("Knowhere has \(stoplights) stoplights.")
//
//stoplights = townPlanByAddingLightsToExistingLights(11, stoplights)
//print("Knowhere has \(stoplights) stoplights.")

func makeTwonGrand(withBudget budget: Int,
                   condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int,
                        toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    }
    else {
        return nil
    }
}
func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}

var stoplights = 4
if let townPlanByAddingLightsToExistingLights = makeTwonGrand(withBudget: 1_000, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}
if let townPlanByAddingLightsToExistingLights = makeTwonGrand(withBudget: 10_500, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}

print("Knowhere has \(stoplights) stoplights.")

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totoalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totoalPopulation += growth
        return totoalPopulation
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
anotherGrowBy(500) // totalPopulation
var bigCityPopulatin = 4_061_981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulatin)
bigCityPopulatin = bigCityGrowBy(10_000)
currentPopulation

// functional programming
// higher-order function

let precinctPopulations = [1244, 2021, 2157]
let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

let bigProections = projectedPopulations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProections

// reduce

let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}
totalProjection
