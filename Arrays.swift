import UIKit

//var bucketList: Array<String>

//var bucketList: [String]

//var bucketList: [String] = ["Climb Mt. Everest"]

var bucketList = ["Climb Mt. Everest"]
//bucketList.append("Fly hot air balloon to Fiji")
//bucketList.append("Watch the Lord of the Rings trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dive in the Great Blue Hole")
//bucketList.append("Find a triple rainbow")

var newItems = [
                "Fly hot air balloon to Fiji",
                "Watch the Lord of the Rings trilogy in one day",
                "Go on a walkabout",
                "Scuba dive in the Great Blue Hole",
                 "Find a triple rainbow"
                ]

//for item in newItems {
//    bucketList.append(item)
//}

bucketList += newItems
bucketList

bucketList.remove(at: 2)

print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaska", at: 2)

for item in bucketList {
    print(item)
}

// immutable array

let lunches = [
                "Cheeseburger",
                "Veggie Pizza",
                "Chicken Caesar Salad",
                "Black Bean Burrito",
                "Falafel Wrap"
                ]

//Challenges


var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
toDoList.isEmpty

//Silver

//var i = 0
//var total = toDoList.count - 1
//for item in toDoList {
//    toDoList[total] = item
//    total = total - 1
//}

var reverseArray = [String]()

for item in toDoList {
    reverseArray.insert(item, at: 0)
}
reverseArray
var reverseString = toDoList.reversed()
for item in reverseString {
    print(item)
}


// Gold
if let index = bucketList.firstIndex(of: "Fly hot air balloon to Fiji") {
    let offset = bucketList.index(index, offsetBy: 2)
    print(bucketList[offset])
}

