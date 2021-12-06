func takeNumbers (str: String, start: Int, finish: Int) -> Int {
    let strToArr = Array(str)
    let result: String = String(strToArr[start]) + String(strToArr[finish])
    return Int(result)!
}

func resultH (str: String, count: Int) -> String{
    var strToArr = Array(str)
    for i in 0..<count {strToArr[i] = "R"}
    return String(strToArr)}

func resultM (str: String, count: Int) -> String{
    var strToArr = Array(str)
    for i in 0..<count {
        if str.count > 4 {
            if i % 3 == 2 {strToArr[i] = "R"}
            else {strToArr[i] = "Y"}
        } else {strToArr[i] = "Y"}
    }
    return String(strToArr)
}

print("Please input any time (hh:mm:ss)")
let time = readLine()

let testHours = takeNumbers(str: time!, start: 0, finish: 1)
let testMinutes = takeNumbers(str: time!, start: 3, finish: 4)
let testSeconds = takeNumbers(str: time!, start: 6, finish: 7)

if testHours < 24 && testHours > -1 && testMinutes < 60 && testMinutes > -1 && testSeconds < 60 && testSeconds > -1 {
    let fiveHours = "OOOO"
    let oneHour = "OOOO"
    let fiveMinutes = "OOOOOOOOOOO"
    let oneMinute = "OOOO"
    var second = "O"

    let fiveH = Int(testHours / 5)
    let oneH = testHours % 5
    let fiveM = Int(testMinutes / 5)
    let oneM = testMinutes % 5
    let oddS = testSeconds % 2
    
    if oddS > 0 && oddS == 0 {second = "Y"}
    
    print(second + resultH(str: fiveHours, count: fiveH) + resultH(str: oneHour, count: oneH) + resultM(str: fiveMinutes, count: fiveM) + resultM(str: oneMinute, count: oneM))
} else {print("Invalid input!")}
