import SwiftUI

struct HomePage: View {
    //create variable
    
    @State private var InternshipField = "Internship Field"
    @State private var Income = "Income"
    @State private var Location = "Location"
    
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(.systemHomepageColour)
                    .ignoresSafeArea()
            }
        }
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
} 
