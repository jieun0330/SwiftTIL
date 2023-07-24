import Foundation

//Issue01. what is .description


//let myBool: Bool = false

//We don't know if there is avalue, but if there is, it is a Boolean
//var myOtherBool: Bool? = nil

//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)
//myOtherBool = nil
//print(myOtherBool)

//nill coalescing operator

//let newValue: Bool? = myOtherBool

//The value of myOtherBool (if there is one), otherwise false
//let newValue2: Bool = myOtherBool ?? false

//print("New value 2: \(newValue2)")

//print("New value 2: \(newValue2.description)")

/*
 .description: 해당 타입의 값을 문자열로 변환시켜 표현하는 역할을 한다.
 기본 데이터 타입(Int, Double 등)을 출력할 때, 문자열 보간법을 사용하여 간단히 출력할 수 있다.
 
 하지만 사용자가 직접 정의한 커스텀 클래스나 구조체 등의 타입은 문자열 보간법만으로는 출력하기 어려울 수 있따.
 
 
 문자열 보간법? print("New value 2: \(newValue2)")는
    대부분의 기본 타입(Int, Double, String 등)을 출력할 때 사용된다.
 */

//var myString: String? = "Hello, wolrd!"
//print(myString)

//print(myString ?? "There is no value!")
//
//
//myString = "New text!"
//print(myString ?? "There is no value!")
//
//myString = nil
//print(myString ?? "There is no value!")


//let newString = myString ?? "some default value"






// ----------------------------------------





var userIsPremium: Bool? = nil

func checkIfUserISPremium() -> Bool? {
    return userIsPremium
}

func checkIfUserISPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserISPremium2()


// If-let
// when if-let is successful, enter the closure
func checkIfUserISPremium3() -> Bool {
    
    //It there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        return newValue
    } else {
        return false
    }
}


func checkIfUserISPremium4() -> Bool {
    
    if let newValue = userIsPremium {
        return newValue
    }
    return false
}


func checkIfUserISPremium5() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    return false
}



//Guard
//When a guard is a failure, enter the closure

func checkIfUserIsPremium6() -> Bool {
    
    //Make sure there is a value
    //If there is a value, let newValue equal that value
    //Else (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    //Here we have access to the non-optional value
    return newValue
}



func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}



// ----------------------------------------


var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

func checkIfUserIsSetUp() -> Bool {
    
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnBoarding == Bool
        //userFavoriteMovie == String
        return getUserStatus(
            userIsNew: userIsNew,
            userDidcompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
        
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
}



func checkIfUserIsSetUp2() -> Bool {
    
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
    // userIsNew == Bool AND
    // userDidCompleteOnBoarding == Bool
    //userFavoriteMovie == String
    return getUserStatus(
        userIsNew: userIsNew,
        userDidcompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
    
    
}





func getUserStatus(userIsNew: Bool, userDidcompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidcompleteOnboarding {
        return true
    }
    
    return false
}







// layered if-let
func checkIfUserIsSetUp3() -> Bool {
    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnBoarding == Bool
            
            if let userFavoriteMovie {
                //userFavoriteMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidcompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
            } else {
                // userFavoriteMovie == nil
                return false
            }
            
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
    } else {
        // userIsNew == nil
        return false
    }
    //    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
    //        // userIsNew == Bool AND
    //        // userDidCompleteOnBoarding == Bool
    //        //userFavoriteMovie == String
    //        return getUserStatus(
    //            userIsNew: userIsNew,
    //            userDidcompleteOnboarding: userDidCompleteOnboarding,
    //            userFavoriteMovie: userFavoriteMovie
    //        )
    //
    //    } else {
    //        // userIsNew == nil OR
    //        // userDidCompleteOnboarding == nil OR
    //        // userFavoriteMovie == nil
    //        return false
    //    }
}




//layered gaurd
func checkIfUserIsSetUp4() -> Bool {
    
    guard let userIsNew else {
        return false
    }
    // userIsNew == Bool
    
    guard let userDidCompleteOnboarding else {
        return false
    }
    // userDidCompleteOnBoarding == Bool
    
    guard let userFavoriteMovie else {
        return false
    }
    //userFavoriteMovie == String
    return getUserStatus(
        userIsNew: userIsNew,
        userDidcompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}



func checkIfUserIsSetUp5() -> Bool {
    
    guard let userIsNew else {
        return false
    }
    
    guard let userDidCompleteOnboarding else {
        return false
    }
    
    guard let userFavoriteMovie else {
        return false
    }

    return getUserStatus(
        userIsNew: userIsNew,
        userDidcompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}





//Optional chaining

func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}


func getUserData() {
    
    let username: String? = getUsername()
    
    //I will get the count if the username is not nil
    
//    if let count = username?.count {
//
//    }
    
    let count: Int? = username?.count
    
    let title: String = getTitle()
    
    //I will get the count always
    let count2 = title.count
    
    //If username has a value, and first character in user name has a value, then return the value of isLowercased
    //Optional chaining
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    
    
    //If will get the count beacuse I know 100% that username is not nil
    let count3: Int = username!.count

    
}


// safely unwrap an optional
// nil coalscing
// if-let
// guard



//explicitly unwrap optional

