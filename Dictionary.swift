import UIKit

var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]

print("I have rated \(movieRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
movieRatings

//  updateValue return old value

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}

movieRatings["The Cabinet of Dr. Caligari"] = 5
//movieRatings.removeValue(forKey: "Dark City")
movieRatings["Dark City"] = nil

for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value).")
}

for movie in movieRatings {
    print("User has rated \(movie).")
}

let watchedMovies = Array(movieRatings.keys)
watchedMovies

// Challenge

// Silver



var Dex = ["DC": [213,214,215,234,245], "WJ": [101, 102, 103,105,106], "CS": [333,334,335,332,298,258] ]

var zip: [Int] = []
for (key, value) in Dex {
    for z in value {
        zip.append(z)
    }
}
print(zip)

// Gold
