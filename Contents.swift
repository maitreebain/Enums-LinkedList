import UIKit

enum Route {
    case home
    case activity(Result<Int, Error>)
    case profile(Profile)
    
    enum Profile {
        case home
        case settings(Settings)
        
        enum Settings {
            case privacy
            case appearance
            case notifications
            case home
        }
    }
}

Route.activity
let route = Route.profile(.settings(.notifications))

switch route {
case .home:
    break
case .activity(.failure(let error)):
    break
case .activity(.success(let int)):
    break
//    switch result {
//    case .failure(let error):
//        break
//    case .success(let int):
//        break
//    }
case .profile(.home):
    break
case .profile(.settings(.appearance)):
    break
case .profile(.settings(.home)):
    break
case .profile(.settings(.notifications)):
    break
case .profile(.settings(.privacy)):
    break
    
//case .profile(let profile):
//
//    switch profile{
//
//    case .home:
//        break
//    case .settings(let settings):
//
//        switch settings {
//
//        case .privacy:
//            break
//        case .appearance:
//            break
//        case .notifications:
//            break
//        case .home:
//            break
//        }
//    }
}

struct NewResult<T, S> {
    let success: T?
    let failure: S?
}


//Linked List
indirect enum List<T> {
    case empty
    case linked(T, List)
    
//    indirect enum Linked {
//        case value(Int)
//        case next(Int, Linked)
//    }
}

let list = List.linked(0, .linked(1, .linked(2, .linked(3, .linked(4, .empty)))))
let bools = List.linked(true, .linked(false, .linked(true, .empty)))

func count<T>(_ list: List<T>) -> Int {
    
    switch list {
    case .empty:
        return 0
    case .linked(_, let tail):
        return 1 + count(tail)
    }
    
}

//count([0, 1, 2, 3, 4]) = 1 + count([1, 2, 3, 4]) = 1 + 1 + count([2, 3, 4]) = 1+ 1 + 1 + count([3, 4]) = 1+1+1+1+count([4]) = 1+1+1+1+1+count([])


print(count(list))

func sum(_ list: List<Int>) -> Int {
    
    switch list {
        
    case .empty:
        return 0
        
    case .linked(let head, let tail):
        
        return head + sum(tail)
    }
}

print(sum(list))

