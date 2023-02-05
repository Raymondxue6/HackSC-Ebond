//
//  PersonalInfoView.swift
//  eBond
//
//  Created by Junyao Ren on 2/5/23.
//

import SwiftUI

struct PersonalInfoView: View {
    @State var displayName: String = ""
    @State var genderArray = ["Male", "Female", "Other"]
    @State var selectedIndex = 0
    @State var age: String = ""
    
    var isBeginButtonDisabled: Bool {
            [displayName, age].contains(where: \.isEmpty)
        }
    
    @State var created:Bool = false
    var body: some View {
        if created{
            homeView()
        }else{
            VStack(alignment: .leading, spacing: 15){
                Text("Tell us more about you!")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
                
                    //name
                    TextField("Name",
                              text: $displayName ,
                              prompt: Text("Nickname").foregroundColor(.white)
                    )
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 2)
                    }
                    .padding(.horizontal)
                    
                    //Gender
                Text("Gender")
                    .padding(.horizontal)
                
                    .foregroundColor(.white)
                    Picker(selection: $selectedIndex, label:EmptyView()){
                        ForEach(0..<genderArray.count){
                            Text(self.genderArray[$0])
                        }
                    }.pickerStyle(.wheel)
                    .frame(height: 150)
                    
                    //Age
                    TextField("Age",
                              text: $age ,
                              prompt: Text("Age").foregroundColor(.white)
                    )
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 2)
                    }
                    .padding(.horizontal)
                
                //Button
                Button(action: {
                    self.created = true
                    print("log in function")
                        
                }){
                    Text("Begin!💫")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                    }
                                        .frame(height: 50)
                                        .frame(maxWidth: .infinity) // how to make a button fill all the space available horizontaly
                                        .background(
                                            isBeginButtonDisabled ? // how to add a gradient to a button in SwiftUI if the button is disabled
                                            LinearGradient(colors: [.gray], startPoint: .topLeading, endPoint: .bottomTrailing) :
                                                LinearGradient(colors: [.blue, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                                        )
                                        .cornerRadius(20)
                                        .disabled(isBeginButtonDisabled) // how to disable while some condition is applied
                                        .padding()
                }
            .background(Color(red: 51/255, green: 0, blue: 111/255))
            .frame(width: UIScreen.main.bounds.size.width, height:UIScreen.main.bounds.size.height)
            }
    }
}

struct PersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalInfoView()
    }
}
