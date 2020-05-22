
// Roman Numerals

//        I = 1
//        V = 5
//        X = 10
//        L = 50
//        C = 100
//        D = 500
//        M = 1000

import UIKit

let twentyFour = "XXIV"
let threeThousand = "MMM"
let ninetySix = "MCMXCVI"

func romanToInt(_ s: String) -> Int {
    
    var romanNum = 0
    let string = s
    
    /*
     I have to account that the switch will add each individual
     numeral value. Doubling the values that are being subtracted
     will account for half that value being returned when romanNum
     goes through the switch.
     
     I admit this is a lazy solution.
     */
    
    if string.contains("IV") || string.contains("IX") {
        romanNum -= 2
    }
    
    if string.contains("XL") || string.contains("XC") {
        romanNum -= 20
    }
    
    if string.contains("CM") || string.contains("CD") {
        romanNum -= 200
    }
    
    for s in string {
        switch s {
        case "I":
            romanNum += 1
        case "V":
            romanNum += 5
        case "X":
            romanNum += 10
        case "L":
            romanNum += 50
        case "C":
            romanNum += 100
        case "D":
            romanNum += 500
        case "M":
            romanNum += 1000
        default:
            break
        }
    }
    
    return romanNum
}

romanToInt(twentyFour)
romanToInt(threeThousand)
romanToInt(ninetySix)

// 24
// 3000
// 1996
