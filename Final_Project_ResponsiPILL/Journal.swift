//
//  FourthView.swift
//  Final_Project_ResponsiPILL
//
//  Created by Dilan Hasthantra on 6/13/23.
//

import SwiftUI

struct Journal: View {
    let persistenceController = PersistenceController.shared
    
    @State private var entry0 = ""
    @State private var entry1 = ""
    @State private var entry2 = ""
    @State private var entry3 = ""
    
    @State private var textTitle0 = "What is your level of emotional state on a scale of 1 to 10?"
    @State private var textTitle1 = "Explain your reasoning from your evaluation?"
    @State private var textTitle2 = "Are you experiencing any specific symptoms from your medications? Elaborate below."
    @State private var textTitle3 = "How has your experience been so far using ResponsiPILL?"
    
    
    var body: some View {
        
        
        NavigationStack {
            ZStack {
//                AngularGradient(colors: [ .purple, .blue, .mint, .purple], center: .center)
                LinearGradient(colors: [Color("darkPink"), Color("myYellow")], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        
                        Text("Journal")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)

                        Text("Reflect on your thoughts.")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.vertical)

                        //Question0
                        //textfield
                        Group{
                            Text("\(textTitle0)")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.top)
                                .background(.regularMaterial)
                            TextField("", text: $entry0)
                                .multilineTextAlignment(.center)
                                .font(.title)
                                .border(Color.white, width: 4)
                                .padding()
   
                            //button0
                            Button("Submit") {
                                print(entry0)
                                textTitle0 = "\(entry0)"
 
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                            
                        }
                        
                        
                        //Question1
                        //textfield
                        Group{
                            Text("\(textTitle1)")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.top)
                                .background(.regularMaterial)
                            TextField("", text: $entry1)
                                .multilineTextAlignment(.center)
                                .font(.title)
                                .border(Color.white, width: 4)
                                .padding()
                            
                            //button1
                            Button("Submit") {
                                print(entry1)
                                textTitle1 = "\(entry1)"
                                
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                        }
                        
                        
                        //Question2
                        //textfield
                        Group{
                            Text("\(textTitle2)")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.top)
                                .background(.regularMaterial)
                            TextField("", text: $entry2)
                                .multilineTextAlignment(.center)
                                .font(.title)
                                .border(Color.white, width: 4)
                                .padding()
                            
                            //button2
                            Button("Submit") {
                                print(entry2)
                                textTitle2 = "\(entry2)"
                                
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                        }
                        
                        //Question3
                        //textfield
                        Group{
                            Text("\(textTitle3)")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.top)
                                .background(.regularMaterial)
                            TextField("", text: $entry3)
                                .multilineTextAlignment(.center)
                                .font(.title)
                                .border(Color.white, width: 4)
                                .padding()
                            
                            //button3
                            Button("Submit") {
                                print(entry3)
                                textTitle3 = "\(entry3)"
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                        }
                       
                            }
                        }
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
                    NavigationLink(destination: ContentView()) {
                       Text("Home")
                        //                                .padding([.top, .trailing])
                    }
                    Spacer()
                }
       
                
            }
        }
    }
    
    struct Journal_Previews: PreviewProvider {
        static var previews: some View {
            Journal()
        }
    }
    
}
