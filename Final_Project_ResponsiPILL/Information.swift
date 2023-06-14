//
//  SecondView.swift
//  Final_Project_ResponsiPILL
//
//  Created by Dilan Hasthantra on 6/13/23.
//

import SwiftUI

struct Information: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("This is the Information page.")
                
                
            }
            .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: Journal()) {
                                    Text("Journal")
                            .padding([.top, .leading])
                                }
                        NavigationLink(destination: Reminders()) {
                            Text("Reminders")
                                .lineLimit(0)
                                .padding([.top, .leading, .trailing])
                                    }
                        NavigationLink(destination: ContentView()) {
                                        Text("Home")
                                .padding([.top, .trailing])
                                    }
                                    }
                                }
                            }
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
