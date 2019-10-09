import UIKit

var str = "Hello, playground"

var colors = ["orange", "red", "yellow", "turquoise", "lavender"]
print("\(colors[colors.count - 5]), \(colors[colors.count - 3]), and \(colors[colors.count - 1]) are some of my favorite colors")

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]

let removeKansas = westernStates.popLast()
let remiveIllinois = westernStates.remove(at: westernStates.count - 1)
print(westernStates)

let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]

for states in moreStates    {
    let nonContinental = moreStates[moreStates.count - 7]
    if nonContinental == states {
        print(states, terminator : ": Not Continental\n")
    }
    else    {
        print(states, terminator : ": Continental\n")
    }
}

let myString = "This is good practice with Strings!"

var countQ4A = 0
for char in myString{
    if char.isLetter    {
        countQ4A += 1
    }
}
print(countQ4A)
print()


let myFavoriteQuotes = ["To be or not to be, that is the question.", "The only source of knowledge is experience.", "Mr. Gorbachev, tear down this wall!", "Four score and twenty years ago..."]

var charCount = 0
for quotes in myFavoriteQuotes  {
    for char in quotes  {
        if char != " "  {
            charCount += 1
        }
    }
    print(charCount)
    charCount = 0
}

var garden = ["dirt","🌷","dirt","🌷","dirt","dirt","🌷","dirt","🌷","dirt"]
var basket = [String]()
var countGarden = 0

for object in garden  {
    if object == "🌷"   {
        garden[countGarden] = "dirt"
        basket.append(object)
        countGarden += 1
    }
    else    {
        countGarden += 1
    }
}
print(garden)
print(basket)
print(basket.count)

var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]

battingLineup.append("Suzuki")
battingLineup[1] = "Tejada"
battingLineup[5] = "Guerrero"
battingLineup.remove(at: 0)
battingLineup.append("Reyes")

print(battingLineup)


var numbers: [Int]

let target: Int = 32
let target2: Int = 3

numbers = [4,2,6,73,32,4,2,1]
var targetNumber = 0

for number in numbers   {
    if number == target {
    targetNumber = number
    }
}

if target == targetNumber {
    print("contains \(target)")
}
else    {
    print("Instance not found")
}


numbers = [32459,2,4,5,1,4,2,1]
var targetNumber2 = 0

for number in numbers   {
    if number == target2 {
    targetNumber2 = number
    }
}

if target2 == targetNumber2 {
    print("contains \(target2)")
}
else    {
    print("Instance not found")
}

let arrayOfNumbers: [Int] = (1...100).map{ _ in Int.random(in: 0...200)}.map{Int($0)}
var kingOfNumbers = 0
for number in arrayOfNumbers   {
    if number > kingOfNumbers   {
        kingOfNumbers = number
    }
}
print(kingOfNumbers)

let arrayOfNumbers2: [Int] = (1...100).map{ _ in Int.random(in: 0...200)}.map{Int($0)}
var wimpyNumber = 201
for number in arrayOfNumbers2   {
    if number < wimpyNumber {
        wimpyNumber = number
    }
}
print(wimpyNumber)


var secondListOfNumbers = [19,13,14,19,101,10000,141,404]
for number in secondListOfNumbers   {
    if number % 2 == 1  {
        print(number)
    }
}

var thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]
var sum = 0
for number in thirdListOfNumbers    {
    sum += number
}
print(sum)


var evenSum = 0
for number in thirdListOfNumbers    {
    if number % 2 == 0   {
        evenSum += number
    }
}

print(evenSum)

print()

var listOne = [28, 64, 7, 96, 13, 32, 94, 11, 80, 68]
var listTwo = [18, 94, 48, 6, 42, 68, 79, 76, 13, 7]
var sharedElements = [Int]()

let l2Content = listTwo.count - 1
var countElements = 0
for number in listOne   {
    for count in 0...l2Content  {
        if number == listTwo[count]    {
            sharedElements.append(number)
        }
    }
}
print(sharedElements.count)
