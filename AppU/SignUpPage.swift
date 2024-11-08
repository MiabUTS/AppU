//
//  SignUpPage.swift
//  AppU
//
//  Created by Mia Brown on 8/10/2024.
//


import SwiftUI
struct SignUpPage: View {
    // Vairables adapted from Idently "A simple Login Screen"
    @State private var FirstName = "First Name"
    @State private var LastName = "Last Name "
    @State private var Email = "Email "
    @State private var Password = "Password "
    @State private var ShowingListInternType = false
    
    var body: some View {
        NavigationStack {     // Navigation stack structure adapted from LearnEDU. 
            ZStack {  // Zstack structure adapted from Code with Chris
                
                // Original assets colour, SwiftUI code.
                Color(.systemHomepageColour)
                    .ignoresSafeArea()
                
                VStack {//Vstack structure adapted from Code with Chris
                    Text("Welcome")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.white)
                        .fontDesign(.monospaced)
                    
                    Text("Sign Up")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .fontDesign(.monospaced)
                        .padding()
                        .padding()
                    
                    // $ = Calling the variable into play
                    TextField("First Name", text:$FirstName)
                        .foregroundColor(Color.brown)
                        .frame(width:300,height:50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    
                    TextField("Last Name", text:$LastName)
                        .foregroundColor(Color.brown)
                    
                        .frame(width:300,height:50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    

                    TextField("Email", text:$Email)
                        .foregroundColor(Color.brown)
                        .frame(width:300,height:50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    TextField("Password", text:$Password)
                        .foregroundColor(Color.brown)
                        .frame(width:300,height:50)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(10)
                    
                    //Own text
                    Text("By clicking Join Now, you agree to App U’s, User Agreement Privacy Policy, and Cookie Policy")
                        .padding()
                        .font(.subheadline)
                        .monospaced()
                        .foregroundColor(Color.brown)
                    
                  
                   
                    Image("JoinNow")//orignal image
                        .resizable()
                        .frame(height: 85)
                        .frame(width: 150)
                    
                    //The use of a navigation learnt from LearnEDU, adapted to my own original views.
                    // NavigationLink: make "JOIN NOW" clickable and navigate to the next page
                        .navigationDestination(isPresented: $ShowingListInternType) {
                            ListInternTypeView(internships: ListInternType.preview())
                            
                      
                    }
                    }
                }
                
            }
        }
    }
    
    struct SignUpPage_Previews: PreviewProvider {
        static var previews: some View {
            SignUpPage()
        }
    }

    

