//
//  FourthView.swift
//  Final_Project_ResponsiPILL
//
//  Created by Dilan Hasthantra on 6/13/23.
//

import SwiftUI

struct Journal: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to the Journal!")
                    .fontWeight(.bold)
                Text("This is the Journal page.")
                    
                
                
            }
            .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: Information()) {
                                    Text("Information")
//                            .padding([.top, .leading])
                                }
                        Spacer()
                        NavigationLink(destination: Reminders()) {
                                        Text("Reminders")
//                                .padding([.top, .leading, .trailing])
                                    }
                        Spacer()
                        NavigationLink(destination: ContentView()) {
                                        Text("Home")
//                                .padding([.top, .trailing])
                                    }
                        Spacer()
                                    }
            }
                            }
            
        }
    }
    

struct Journal_Previews: PreviewProvider {
    static var previews: some View {
        Journal()
    }
}
