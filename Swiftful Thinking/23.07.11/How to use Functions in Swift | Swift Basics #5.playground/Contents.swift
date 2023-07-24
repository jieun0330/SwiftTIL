import UIKit
//
//func myFirstFunction() {
//    print("my first function called")
//    mySecondFunction()
//    myThirdFunction()
//}
//
//func mySecondFunction() {
//    print("my second function called")
//}
//
//func myThirdFunction() {
//    print("my third function called")
//}
//
//myFirstFunction()
//
//
//// ----------------------------------------
//
//
//
//func getUserName() -> String {
//    let username: String = "cyndi"
//    return username
//}
//
//func checkIfUserIsPremium() -> Bool {
//    return false
//}
//
//let name: String = getUserName()
//
//
//
//
//// ----------------------------------------
//
//showFirstScreen()
//
//func showFirstScreen() {
//    var userDidCompleteOnboarding: Bool = false
//    var userProfileIscreated: Bool = true
//    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIscreated)
//
//    if status == true {
//        print("show home screen")
//    } else {
//        print("show onboarding screen")
//    }
//
//}
//
//func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
//    if didCompleteOnboarding && profileIsCreated {
//        doSomethingElse(someValue: didCompleteOnboarding)
//        return true
//    } else {
//        return false
//    }
//}
//
//func doSomethingElse(someValue: Bool) {
//
//}
//
//
//
//// ----------------------------------------
//
////Void에 대해서 적어놓기
//
//let newValue = doSomething()
//
//
//func doSomething() -> String {
//    var title: String = "avengers"
//
//    // if title is equal to avengers
//    if title == "avengers" {
//        return "marvel"
//    } else {
//        return "not marvel"
//    }
//}
//
////func doSomething2() -> Void
//
////guard 더 알아보기
//
//checkIfTitleIsAvengers()
//
//func checkIfTitleIsAvengers() -> Bool {
//    var title: String = "avengers"
//
//    //make sure title == avengers
//    guard title == "avengers" else {
//        return false
//    }
//    return true
//}
//
//func checkIfTitleIsAvengers2() -> Bool {
//    var title: String = "avengers"
//
//    if title == "avengers" {
//        return true
//    } else {
//        return false
//    }
//}
//
//
//
//// Calculated variables are basically functions
//
//let number1 = 5
//let number2 = 8
//
//func calculatedNumbers() -> Int {
//    return number1 + number2
//}
//
//
//func calculatedNumbers(value1: Int, value2: Int) -> Int {
//    return value1 + value2
//}
//
//
//let result1 = calculatedNumbers()
//let result2 = calculatedNumbers(value1: number1, value2: number2)
//
//var calculateNumbers: Int {
//    return number1 + number2
//}
//


//Mark: - 함수
func someFunction(name: String) {
    print(name + "hi")
    print(name + "hi")
    print(name + "hi")
    print(name + "hi")
    print(name + "hi")
    print(name + "hi")
    print(name + "hi")
    print(name + "hi")
    print(name + "hi")
}

var human = "jieun"
var hello = ""

someFunction(name: human)
