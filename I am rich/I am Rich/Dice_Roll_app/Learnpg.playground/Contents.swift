struct User{
    let userName: String
    var UserMail: String
    var userFollowers: Int
    var userActiveStatus: Bool
    init(name: String, email: String, followers: Int, isActive: Bool){
        	userName = name
        UserMail = email
        userFollowers = followers
        userActiveStatus = isActive
    }
    func logStatus(){
            print("\(userName) is working hard.")
        print("\(userName) has left earth.")
    
    }
    
}
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.userName) on \(musk.UserMail) ...")
    print("\(musk.userName) has \(musk.userFollowers) followers")
    // sometime later
    musk.userActiveStatus = false
    musk.logStatus()
    
