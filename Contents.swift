import UIKit

var inputArray = [1,0,1,0,0,0,0,1,1,1,1,1,1]

var leftIndex: Int = 0
var rightIndex: Int = inputArray.count-1

while leftIndex < rightIndex{
    
    while inputArray[leftIndex] == 0 && leftIndex < rightIndex{
        leftIndex = leftIndex+1
    }
    
    while inputArray[rightIndex] == 1 && rightIndex > leftIndex {
        rightIndex = rightIndex-1
    }
    
    if leftIndex <  rightIndex{
        inputArray[leftIndex] = 0
        inputArray[rightIndex] = 1
        leftIndex = leftIndex+1
        rightIndex = rightIndex-1
    }
}

print(inputArray)
