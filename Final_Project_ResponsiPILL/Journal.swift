//
//  FourthView.swift
//  Final_Project_ResponsiPILL
//
//  Created by Dilan Hasthantra on 6/13/23.
//

import SwiftUI

struct Journal: View {
    
    @State private var entry = ""
    @State private var entry2 = ""
    @State private var textTitle = "How are you feeling?"
    @State private var textTitle2 = "Are you experienceing any specfic symptoms at this time?"
    
    var body: some View {
            NavigationStack {
                VStack {
                    
                    Text("ResponsiPILL")
                        .font(.largeTitle)
                    Text("\(textTitle)")
                        .font (.title)
                        .padding(.top)
                    
                    //textfield
                    TextField("", text: $entry)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color.purple, width: 1)
                        .padding()
                    
                    //button
                    Button("Submit") {
                        print(entry)
                        textTitle = "\(entry)!"
                        
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    
                    //2nd question
                    //textfield
                    Text("\(textTitle2)")
                        .font (.title)
                        .padding(.top)
                    TextField("", text: $entry2)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color.purple, width: 1)
                        .padding()
                    
                    //button
                    Button("Submit") {
                        print(entry)
                        textTitle2 = "\(entry2)!"
                        
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    
                    
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
        }


struct Journal_Previews: PreviewProvider {
    static var previews: some View {
        Journal()
    }
}
