//
//  ListInternType.swift
//  AppU
//
//  Created by Mia Brown on 11/10/2024.
//List for searchable function for intertnship types

import SwiftUI

// Define structure for each intern type
struct ListInternType: Identifiable {
    var id = UUID()  // A unique identifier for each intern, Praters Tutorial
    //Variable structure learnt from Praters tutorial, original variables coded.
    var Name: String
    var IsFavourite: Bool
    var Description: String
    var Duration: String
    var Location: String
    var SkillsRequired: String
    var Responsibilities: String
    @State private var Searchterm: String = ""
    
    // Data of list previews, return function learnt from Prater. Original data
     static func preview() -> [ListInternType]  {
         return [
            ListInternType(Name: "PR Assistant", IsFavourite: true, Description: "A role in communication strategies - focuses on developing communication strategies and engaging with media outlets.", Duration: "3 months", Location: "Paddington", SkillsRequired: "Strong interpersonal skills, critical thinking, and client relationship management.", Responsibilities: "Collaborate with influencers, assist in events, and strategize future brand opportunities."),
             
            ListInternType(Name: "Junior Grapic Designer", IsFavourite: false, Description: "Digital and Social Graphic DesignThis role - involves working with cutting-edge technology.", Duration: "6 months", Location: "Central Coast", SkillsRequired: "Proficiency in coding, problem-solving skills, and teamwork.", Responsibilities: "Assist in software development, and project management of style and event graphics."),
             
            ListInternType(Name: "Paralegal", IsFavourite: false, Description: "Junior Paralegal", Duration: "6 months", Location: "Sydney", SkillsRequired: "Problem solving, communication in a Court Room, research skills", Responsibilities: "Organisation and management of legal data, evidence, and files.")
         ]
     }
 }

 struct ListInternTypeView: View {
     var internships: [ListInternType]  // Accept internships as an argument, learnt from Allen. Original data and views. 
     @State private var searchTerm: String = ""

     // Filter internships based on the search terms.Oringal search terms and data.
     var filteredListInternType: [ListInternType] {
         if searchTerm.isEmpty {
             return internships
         } else {
             return internships.filter { $0.Name.localizedCaseInsensitiveContains(searchTerm) }
         }
     }

     var body: some View {
         NavigationView {
             //The use of a navigation learnt from LearnEDU, adapted to my own original views.
             List(filteredListInternType) { intern in
                 // Navigate to the internship detail view when tapped.
                 //The use of a navigation learnt from LearnEDU, adapted to my own original views.
                 NavigationLink(destination: InternshipDetailView(intern: intern)) {
                     HStack {
                         Text(intern.Name)
                             .foregroundColor(.primary)
                         Spacer()
                     }
                 }
             }
             //Own searchable text, adapted from Allens SwiftUI search tutorial.
             .searchable(text: $searchTerm, prompt: "Search Internship")
             .navigationTitle("Internships")
         }
     }
 }


 // Physical view for Internship Detail, i.e the vertical display for an internship once clicked.
// All istructures learnt from Praters, tutorial video, with new variables added and new return functions with orignal data. 

 struct InternshipDetailView: View {
     var intern: ListInternType
     @State private var SearchTerm = "Search Internship "
     
     var body: some View {
         VStack {
             Text(intern.Name)
                 .font(.largeTitle)
                 .padding()
             Text(intern.Description)
                 .padding()
             Text("Duration: \(intern.Duration)")
                 .padding()
             Text("Location: \(intern.Location)")
                 .padding()
             Text("Skills Required:\(intern.SkillsRequired)")
                 .padding()
             Text("Responsibilities:\(intern.Responsibilities)")
                 .padding()
             
         }
         .searchable(text: $SearchTerm, prompt: "Search Internship")
         .navigationTitle(intern.Name)
        
     }
 }



 // Function to determine which detail view to navigate to
 func destinationView(for intern: ListInternType) -> some View {
     switch intern.Name {
     case "PR Assistant":
         return AnyView(CommunicationsDetailView(intern: intern))
     case "Junior Graphic Designer":
         return AnyView(GraphicDesignDetailView(intern: intern))
     case "Paralegal":
         return AnyView(ParalegalDetailView(intern: intern))
     default:
         return AnyView(ParalegalDetailView(intern: intern))
     }
 }

 // Detail view for Communications internship
 struct CommunicationsDetailView: View {
     var intern: ListInternType

     var body: some View {
         VStack(alignment: .leading, spacing: 10) {
             Text(intern.Name)
                 .font(.largeTitle)
                 .padding(.bottom, 5)

             Text("PR Assitant")
                 .font(.headline)
             Text(intern.Description)
                 .font(.body)

             Text("3 months")
                 .font(.headline)
             Text(intern.Duration)
                 .font(.body)

             Text("Paddington")
                 .font(.headline)
             Text(intern.Location)
                 .font(.body)

             Text("Unique Aspects:")
                 .font(.headline)
                 .padding(.top, 20)
             Text("This internship focuses on developing communication strategies and engaging with media outlets.")
                 .font(.body)

             Text("Skills Required:")
                 .font(.headline)
             Text("Strong interpersonal skills, critical thinking, and client relationship management.")
                 .font(.body)

             Text("Responsibilities:")
                 .font(.headline)
             Text("Collaborate with influencers, assist in events, and strategize future brand opportunities.")
                 .font(.body)

             Spacer()
         }
         .padding()
         .navigationTitle(intern.Name)
     }
 }

 // Detail view for Technology internship
 struct GraphicDesignDetailView: View {
     var intern: ListInternType

     var body: some View {
         
         VStack(alignment: .leading, spacing: 10) {
             Text(intern.Name)
                 .font(.largeTitle)
                 .padding(.bottom, 5)

             Text("Junior Graphic Designer:")
                 .font(.headline)
             Text(intern.Description)
                 .font(.body)

             Text("6 months:")
                 .font(.headline)
             Text(intern.Duration)
                 .font(.body)

             Text("Central Coast:")
                 .font(.headline)
             Text(intern.Location)
                 .font(.body)

             Text("Skills Required:")
                 .font(.headline)
             Text("Proficiency in coding, problem-solving skills, and teamwork.")
                 .font(.body)

             Text("Responsibilities:")
                 .font(.headline)
             Text("Assist in software developmentand project management of style and event graphics.")
                 .font(.body)

             Spacer()
         }
         .padding()
         .navigationTitle(intern.Name)
     }
 }

 // Detail view for Graphic Desinger internship
 struct ParalegalDetailView: View {
     var intern: ListInternType

     var body: some View {
         VStack(alignment: .leading, spacing: 10) {
             Text(intern.Name)
                 .font(.largeTitle)
                 .padding(.bottom, 5)

             Text("Paralegal:")
                 .font(.headline)
             Text(intern.Description)
                 .font(.body)

             Text("6 months:")
                 .font(.headline)
             Text(intern.Duration)
                 .font(.body)

             Text("Sydney:")
                 .font(.headline)
             Text(intern.Location)
                 .font(.body)

             Text("Skills Required:")
                 .font(.headline)
             Text("Problem solving, communication in a Court Room, research skills")
                 .font(.body)

             Text("Responsibilities:")
                 .font(.headline)
             Text("Organisation and management of legal data, evidence, and files.")
                 .font(.body)

             Spacer()
         }
     }
 }

 // Preview Providers
 struct ListInternTypeView_Previews: PreviewProvider {
     static var previews: some View {
         ListInternTypeView(internships: ListInternType.preview())
     }
     
     struct CommunicationsDetailView_Previews: PreviewProvider {
         static var previews: some View {
             CommunicationsDetailView(intern: ListInternType.preview()[0])
         }
     }
     
     struct GraphicDesignDetailView_Previews: PreviewProvider {
         static var previews: some View {
             GraphicDesignDetailView(intern: ListInternType.preview()[1])
         }
     }
     
     struct ParalegalDetailView_Previews: PreviewProvider {
         static var previews: some View {
             ParalegalDetailView(intern: ListInternType.preview()[1])
         }
     }
     
 }

