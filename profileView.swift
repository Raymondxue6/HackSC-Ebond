//
//  profileView.swift
//  ebond 1.1
//
//  Created by xue mingyang on 2/4/23.
//

import SwiftUI
//import Alamofire
//import SwiftyJSON
import Kingfisher

struct profileView: View {
    var username = "Tiffany"
    var age = 21
    var gender = "female"
    var tags = ["Game", "K-Pop", "Anime"]
    var intro = "Hello world"
    var img = "https://img.clinicmed.net/uploadimg/image/20211102/20211102123946_85499.jpg"
    
    var body: some View {
       
        VStack(alignment: .leading){
            KFImage(URL(string: img)!)
                .resizable()
            
            HStack(){
                VStack(alignment: .leading){
                    Text("\(username)")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text("Age: \(age)")
                        .font(.title)
                        .fontWeight(.semibold)
                    Text("Gender: \(gender)")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("Tags:")
                        .font(.title)
                        .fontWeight(.semibold)
                    ForEach(tags, id:\.self){tag in Text("\(tag)")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.pink)
                        
                    }
                }
            }
            Text("Self Introduction:")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 3)
            Text("\(intro)")
            

        }
        .padding()
        .frame(width: 350, height: 650)
        .background(Color(red: 0.68, green: 0.79, blue: 0.93))
        .cornerRadius(30)
        
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
