//
//  LogInPage.swift
//  AppU
//
//  Created by Mia Brown on 8/10/2024.
//
import SwiftUI

struct LoginView: View {
    // Vairables adapted from Idently "A simple Login Screen"
    @State private var ShowingListInternType = false
    @State private var Username = "Username"
    @State private var Password = "Password"
    @State private var Wrongusername = 0
    @State private var Wrongpassword = 0

    var body: some View {
        // Navigation stack structure adapted from LearnEDU.
        NavigationStack {
       // Zstack structure adapted from Code with Chris
            ZStack {
                
                // Original assets colour, SwiftUI code.
                Color(.systemHomepageColour)
                                   .ignoresSafeArea()
                
                //Vstack structure learnt from Code with Chris
                VStack {
                    Text("Log In")
                        .font(.largeTitle)
                        .padding()
                    
                    //Login authentication learnt from Indently "A simple login Screen"
                    // Username TextField
                    TextField("Username", text: $Username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .border(Wrongusername == 2 ? Color.red : Color.clear)
                    
                    // Password SecureField
                    SecureField("Password", text: $Password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .border(Wrongpassword == 2 ? Color.red : Color.clear)
                    
                    // Original Image assets
                    //Image Button for Login
                
                    Button(action: {
                        authenticateUser(username: Username, password: Password)
                    }) {
                        Image("LogInButton") // Original Image asset,
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 50)
                    }
                    .padding()
                    
                    //The use of a navigation learnt from LearnEDU, adapted to my own original views.
                    
                    // Navigation Destination for Internship List
                    .navigationDestination(isPresented: $ShowingListInternType) {
                                           ListInternTypeView(internships: ListInternType.preview())
                                       
                    }

                    }
                }
                .padding()
            }
        }
    
    
    // Function to authenticate user learnt from Indently "A simple login Screen
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "user123" { //own username
            Wrongusername = 0
            if password == "pass123" {//own password 
                Wrongpassword = 0
                ShowingListInternType = true  // Trigger the navigation to internships
            } else {
                Wrongpassword = 2  // Incorrect password, show red border
            }
        } else {
            Wrongusername = 2  // Incorrect username, show red border
        }
    }
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
    

