
import Foundation
import Alamofire
var str = "Hello, playground"

let login_url = "http://127.0.0.1:8000/login/"
let email = "test2@gmail.com"
let password = "test123"
//: [Next](@next)
Alamofire.request(login_url, method: .post, parameters: ["username" : email, "password": password],encoding: JSONEncoding.default, headers: nil).responseJSON {
    response in
    switch response.result {
    case .success:
        print(response)
        
        break
    case .failure(let error):
        
        print(error)
    }
}
