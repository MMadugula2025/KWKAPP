//
//  ThirdView.swift
//  Final_Project_ResponsiPILL
//
//  Created by Dilan Hasthantra on 6/13/23.
//

import SwiftUI

struct Reminders: View {
    @Environment(\.managedObjectContext) var context
    
    // @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    @FetchRequest(entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    
    var body: some View {
        
        
        NavigationStack {
            
            VStack {
                
                HStack {
                    Text("Reminders")
                        .font(.largeTitle)
                    
                    Spacer()
                    //button
                    Button(action: {
                        self.showNewTask = true
                    }) {
                        Text("+")
                        
                    }
                    
                }
                
                .padding()
                
                Spacer()
                
                List{
                    
                    ForEach(toDoItems){ toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + (toDoItem.title ?? "No title"))
                        } else {
                            Text(toDoItem.title ?? "No title")
                        }
                        
                    }
                    .onDelete(perform: deleteTask)
                }
                
                
                
                if showNewTask {
                    NewToDoView(title: "", isImportant: false,showNewTask: $showNewTask)
                }
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
                        
                        NavigationLink(destination: Journal()) {
                            Text("Journal")
                            //                                .padding([.top, .trailing])
                        }
                        Spacer()
                    }
                }
            }
            
            .padding()
        }
       
    func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)
            
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
    }
  

      
  

                    

    

    
    struct Reminders_Previews: PreviewProvider {
        static var previews: some View {
            Reminders()
        }
    }
