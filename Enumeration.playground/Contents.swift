import UIKit
import Foundation

//WithOutType Enumeration
enum Employee{
    case id
    case name
    case salary
}
let empDetails = Employee.salary
let valueHash = Employee.name.hashValue
print(valueHash)
switch empDetails {
case .id:
    print(empDetails, "101")
case .name:
    print(empDetails, "Shoeb")
case .salary:
    print(empDetails, "10000")
}


//WithType Enumeration
enum Laptops: String{
    case Brand = "MacBook"
    case Modelz = "monterey"
    case Price = "1000000"
}
let brandPrint = Laptops.Brand
print(brandPrint)
let modePrint  = Laptops.Modelz.hashValue
print(modePrint)
let pricePrint = Laptops.Price.rawValue
print(pricePrint)


//Used With Function
enum Programming {
    //case Application, WebPage, Machine
    case Application
    case WebPage
    case Machine
    
    func Language() -> String{
        switch self{
        case .Application:
            return "Java or Kotlin"
        case .WebPage:
            return "Html and Css"
        case .Machine:
            return "Python or Ruby"
        }
    }
}
let Details = Programming.Application.Language()
print(Details)

//With Argument
enum Student{
    case Name(String)
    case Mark(String, String, String)
}
let sName = Student.Name("Shoeb")
let sMark = Student.Mark("10", "5", "7")
switch sMark{
case .Name(let strName):
    print("My Name Is \(strName)")
case .Mark(let M1, let M2, let M3):
    print("My Marks Is \(M1) \(M2) \(M3)")
}
