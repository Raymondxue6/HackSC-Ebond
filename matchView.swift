//
//  matchView.swift
//  eBond
//
//  Created by Junyao Ren on 2/3/23.
//

import SwiftUI

struct matchView: View {
    @State var autoMatch: Bool = false
    @State var selfMatch: Bool = false
    
    var body: some View {
        // Auto match -- link to profile
        if (autoMatch == false && selfMatch == true){
            selfMatchView()
        }
        else{
            VStack{
                Button(action: {
                    self.autoMatch = true
                    print("Round Action")
                }) {
                    Text("Auto Match💖")
                        .frame(width: 200, height: 200)
                        .foregroundColor(Color.white)
                        .bold()
                        .background(Color(red: 0.93, green: 0.69, blue: 0.68))
                        .clipShape(Circle())
                }
                .padding(30)
                Button(action: {
                    self.selfMatch = true
                    print("Round Action")
                }) {
                    Text("Choose By Myself🙋‍♀️")
                        .frame(width: 200, height: 200)
                        .foregroundColor(Color.white)
                        .bold()
                        .background(Color(red: 0.93, green: 0.93, blue: 0.68))
                        .clipShape(Circle())
                }
            }
            .frame(width: UIScreen.main.bounds.size.width, height:UIScreen.main.bounds.size.height)
            .padding()
        }
        
    }
}

struct matchView_Previews: PreviewProvider {
    static var previews: some View {
        matchView()
    }
}
