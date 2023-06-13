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
                Text("This is the Journal page.")
                
                
            }
            .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: Information()) {
                                    Text("Information")
                                }
                        NavigationLink(destination: Reminders()) {
                                        Text("Reminders")
                                    }
                        NavigationLink(destination: ContentView()) {
                                        Text("Home")
                                    }
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
