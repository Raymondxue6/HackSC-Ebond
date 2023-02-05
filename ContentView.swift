//
//  ContentView.swift
//  eBond
//
//  Created by Junyao Ren on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    
    @State var logged: Bool = false
    
    var isSignInButtonDisabled: Bool {
            [username, password].contains(where: \.isEmpty)
        }
       
    var body: some View {
        NavigationView{
            VStack{
                if logged {
                    PersonalInfoView()
                }else{
                    //picture here
                    Spacer()
                    Text("Eb🌎nd")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .padding(10)
                    Spacer()
                    VStack(alignment: .leading, spacing: 15) {
                        TextField("Name",
                                  text: $username ,
                                  prompt: Text("Username").foregroundColor(.white)
                        )
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.white, lineWidth: 2)
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Group {
                                if showPassword { // when this changes, you show either TextField or SecureField
                                    TextField("Password",
                                              text: $password,
                                              prompt: Text("Password").foregroundColor(.white)) // How to change the color of the TextField Placeholder
                                } else {
                                    SecureField("Password", // how to create a secure text field
                                                text: $password,
                                                prompt: Text("Password").foregroundColor(.white)) // How to change the color of the TextField Placeholder
                                }
                            }
                            .padding(10)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.white, lineWidth: 2) // How to add rounded corner to a TextField and change it colour
                            }
                            
                        }.padding(.horizontal)
            
                        
                        Button(action: {
                            self.logged = true
                            print("log in function")
                                
                        }){
                            Text("Start😈")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                            }
                                                .frame(height: 50)
                                                .frame(maxWidth: .infinity) // how to make a button fill all the space available horizontaly
                                                .background(
                                                    isSignInButtonDisabled ? // how to add a gradient to a button in SwiftUI if the button is disabled
                                                    LinearGradient(colors: [.gray], startPoint: .topLeading, endPoint: .bottomTrailing) :
                                                        LinearGradient(colors: [.blue, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                                                )
                                                .cornerRadius(20)
                                                .disabled(isSignInButtonDisabled) // how to disable while some condition is applied
                                                .padding()
                    }
                    Spacer()
                }
            }.background(Color(red: 51/255, green: 0, blue: 111/255))
                .frame(width: UIScreen.main.bounds.size.width, height:UIScreen.main.bounds.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
