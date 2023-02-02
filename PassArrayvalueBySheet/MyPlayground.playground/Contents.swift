import UIKit

enum int: Int {
    case a
    case b
    case c
}
let g: int? = int(rawValue: 2)
g! == int.c
if let h = int.init(rawValue: 2) {
    print("ok: \(h)")
}

enum Color: CaseIterable {//CaseIterableで列挙したcaseを配列に変更可能に。
    case red
    case blue
    case yellow
}
let a = Color.allCases
print(a)




//enum Ticket {
//    case 切符(Int, Bool, 回数券: Bool)
//    case カード(Int, Bool)
//    case 敬老パス
//    
//   
//        switch self {
//        case let .切符(fare, flag, _ ):
//           print("普通: \(fare)" + (flag ? "小人" : "大人"))
//        case .敬老パス:
//          print("敬老パス")
//        case .カード(let  r, true) where r < 110 ://小人の最低賃金
//          print("カード：残高不足")
//        case .カード(let r, false) where r < 230 :
//          print("カード：　残高不足")
//        case .カード:
//          print("カード")
//        }
//    
//}
//

