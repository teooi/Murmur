import SwiftUI
import FirebaseDatabase

class GeneralInfoViewModel: ObservableObject {
    @Published
    var username = ""
    var school = ""
    //var phonenumber = "" later use
    var id = NSUUID().uuidString
    
    private var ref = Database.database().reference()
    
    func writeGeneralInfo() {
        let userInfo = ["username": username, "school": school]
        ref.child("users").child(id).setValue(userInfo)
    }
}
