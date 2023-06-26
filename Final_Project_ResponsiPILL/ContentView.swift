//
//  ContentView.swift
//  Final_Project_ResponsiPILL
//
//  Created by Dilan Hasthantra on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    let persistenceController = PersistenceController.shared
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        
        
        
        NavigationStack {
            ZStack {
                
                AngularGradient(colors: [.teal, .mint, .purple, .teal], center: .center)
                   .ignoresSafeArea()
                ScrollView {
                    VStack {
                        
                        Image("ResponsiPILLLogo")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .border(Color.white, width: 10)
                                .padding()
                        
                        

                        Text("\(textTitle)")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .background(.regularMaterial)
                        
                        //textfield
                        TextField("", text: $name)
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .border(Color.white, width: 4)
                            .padding()
                            
                        
                        //button
                        Button("Submit") {
                            print(name)
                            textTitle = "Welcome to ResponsiPILL, \(name)!"
                            
                        }
                        .padding(.bottom)
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        
                        //description
                        Text("About ResponsiPILL")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .background(.regularMaterial)
                        
                        Text("ResponsiPILL is your pill buddy designed to simplify medication management and enhance your overall healthcare experience. With its intuitive features and comprehensive functionality, ResponsiPILL ensures you never miss a dose!")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.all)

                        
                        Text("How to Use ResponsiPILL")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.top)
                            .background(.regularMaterial)
                        
                        Text("In the next screens, you will be prompted to the Information page which contains detailed descriptions of standard medications and common side effects, the Reminder page which ensures you stay on track with your medication regimen through timely, personalized reminders, and the Journal Page where you can reflect on how your medications affect you and record your health care journey!")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding([.top, .leading, .trailing])
                            
                        
                    }
                    
                    .toolbar {
                        ToolbarItemGroup(placement: .bottomBar) {
                            NavigationLink(destination: Information()) {
                                Text("Information")
                                //                            .padding([.top, .leading])
                            }
                            Spacer()
                            
                            NavigationLink(destination: Reminders().environment(\.managedObjectContext, persistenceController.container.viewContext)) {
                                Text("Reminders")
                                //                                .padding([.top, .leading, .trailing])
                                
                            }
                            Spacer()
                            
                            NavigationLink(destination: Journal()) {
                                Text("Journal")
                                //                                .padding([.top, .trailing])
                            }
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

