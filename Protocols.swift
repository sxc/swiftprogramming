import UIKit

func printTable(_ data: [[String]], withColumnLabels columnLabels: String...) {
    var firstRow = "|"
    
    
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels {
        let columnHeader = "\(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.count)
        
    }
    print(firstRow)
    
    for row in data {
        var out = "|"
        
//        for item in row {
//            out += "\(item) |"
//        }
//
        
        for (j, item) in row.enumerated() {
            let paddingNeeded = columnWidths[j] - item.count
            let padding = repeatElement(" ", count:
                paddingNeeded).joined(separator: "")
            out += "\(padding)\(item) |"
        }
        
        print(out)
    }
    
    }

    let data = [
        ["Joe", "30", "6"],
        ["Karen", "40", "18"],
        ["Fred", "50", "20"],
    
    ]
    
    printTable(data, withColumnLabels: "Employee Name", "Age", "Years of Experience")

