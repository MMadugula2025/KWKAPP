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
            ZStack{
                LinearGradient(colors: [Color(.purple), Color(.white)], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    VStack {
                        Group {
                            Text("Information")
                                .font(.largeTitle)
                            Text("Source: webmd.com and medlineplus.gov")
                                .font(.caption)
                            Text("Most Common Medication")
                                .font(.title2)
                                .padding(.top)
                            Text("Atorvastatin: Atorvastatin and a proper diet lower bad cholesterol and fats and raise good cholesterol in blood. It works by reducing the amount of cholesterol made by the liver. Take this medication regularly to get the most benefit from it. Remember to take it at the same time each day.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding([.top, .leading, .trailing])
                            Text("Lisinopril: used alone or in combination with other medications to treat high blood pressure, heart failure, or improve survival after a heart attack.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding([.top, .leading, .trailing])
                            Text("Levothyroxine: used to treat hypothyroidism (a condition where the thyroid gland does not produce enough thyroid hormone). It is also used with surgery and radioactive iodine therapy to treat thyroid cancer. It works by replacing thyroid hormone that is normally produced by the body.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding([.top, .leading, .trailing])
                            Text("Side Effects of Common Medication:")
                                .font(.title2)
                                .multilineTextAlignment(.center)
                                .padding(.top)
                        }
                        Group {
                            Text("Remember that your medication has been prescribed because your doctor has judged that the benefit to you is greater than the risk of side effects. ")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding([.top, .leading, .trailing])
                            Text("Atorvastatin: Many people using this medication do not have serious side effects. This drug may rarely cause muscle problems (rhabdomyolysis and autoimmune myopathy), may cause or worsen diabetes, mild memory problems or confusion.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding([.top, .leading, .trailing])
                            Text("Lisinopril: Side effects may include cough, dizziness, tiredness, or difficulty breathing or swallowing.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding([.top, .leading, .trailing])
                            Text("Levothyroxine: Side effects may include weight change, headache, fever, or hives.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding([.top, .leading, .trailing])
                            Text("Vitamins and their Benefits:")
                                .font(.title2)
                                .padding(.top)
                            Image("VitaminBenefits")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal)
                            Text("Source: cheatdaydesign.com")
                                .font(.caption)
                        }
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .bottomBar) {
                            NavigationLink(destination: Journal()) {
                                Text("Journal")
                                //              .padding([.top, .leading])
                            }
                            Spacer()
                            NavigationLink(destination: Reminders()) {
                                Text("Reminders")
                                    .lineLimit(0)
                                //                .padding([.top, .leading, .trailing])
                            }
                            Spacer()
                            NavigationLink(destination: ContentView()) {
                                Text("Home")
                                //                .padding([.top, .trailing])
                            }
                            Spacer()
                        }
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
