//
//  ContentView.swift
//  AppU
//
//  Created by Mia Brown on 1/10/2024.
//

import SwiftUI

//Create a visual view of content 
struct ContentView: View {
    var body: some View {
        NavigationView {       // Navigation stack structure adapted from LearnEDU.
        
            ZStack {      // Zstack structure adapted from Code with Chris
                Color(.systemHomepageColour)//oringal asset colour
                    .ignoresSafeArea()
                
                //Vstack vertically aligns the page
                // Vstack structure adapted from Code with Chris
                VStack(alignment: .center, spacing: 20.0) {
                  
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                  
                    // Front page app design original
                    Text("Welcome To")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .fontDesign(.monospaced)
                        .foregroundColor(Color.black)
                    
                    Text("Destination")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .fontDesign(.monospaced)
                        .foregroundColor(Color.black)
                    
                    Text("U")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.monospaced)
                        .foregroundColor(Color.pink)
                    
                    
                    //HStack horizontally aligns the page, adapted from Code with Chris
                    HStack {
                        
                        // NavigationLink has been added to move the start page over to the Log In page when the custom button LOG IN is pressed
                       //The use of a navigation learnt from LearnEDU, adapted to my own original views.
                        NavigationLink(destination: LoginView()) {
                     
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            //Image LogInButton has been retrieved from assets and made clickable via navigation link. Orignal Login image asset and sizeable code.
                            Image("LogInButton")
                                .resizable()
                                .frame(height:85)
                                .frame(width:150)
                            
                            // NavigationLink with a custom image in the label
                            NavigationLink(destination: SignUpPage()) {
                                
                                Image("SignUpButton") //Orignal asset and rezisable code.
                                    .resizable()
                                    .frame(height:75)
                                    .frame(width:150)
                                
                                ZStack {
                                    Color(.systemHomepageColour)
                                        .ignoresSafeArea()//oringal asset colour
                                    
                                }
                            }
                        }
                    }
                    
                }
            }
            
        }
    }
}
    // Functions to print Login and Sign In, adaptaed from Code with Chris 
    func LogIn() {
        print("Log In")
    }
    
    func SignIn() {
        print("Sign In")
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

            
        
    


