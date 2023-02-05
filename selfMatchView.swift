//
//  selfMatchView.swift
//  eBond
//
//  Created by Junyao Ren on 2/4/23.
//

import SwiftUI
import Kingfisher
import Alamofire

struct selfMatchView: View {
    
    @State var gamelink = "https://inews.gtimg.com/newsapp_bt/0/12653741956/1000"
    @State var animelink = "https://cdn.vox-cdn.com/thumbor/4E98u_RfYxa8pkRK79CyPClFABY=/0x0:1147x647/1200x800/filters:focal(483x233:665x415)/cdn.vox-cdn.com/uploads/chorus_image/image/70742090/Jotaro.0.jpeg"
    @State var kpoplink = "https://assets.teenvogue.com/photos/63b4a6386ce4660478f4d4a1/1:1/pass/undefined"
    @State var tvshowslink = "https://hbomax-images.warnermediacdn.com/images/GXdbR_gOXWJuAuwEAACVH/tileburnedin?size=1280x720&partner=hbomaxcom&v=6a409f09891f75549fdb8d07dc969b63&host=art-gallery.api.hbo.com&language=en-us&w=1280"
    @State var musiclink = "https://static-cdn.jtvnw.net/ttv-boxart/Music.jpg"
    @State var sportslink = "https://media.bleacherreport.com/image/upload/x_0,y_1291,w_3455,h_2289,c_crop/v1647895305/ec9tbthushoxphq6wg4i.jpg"
    @State var showMatched = false
    
    var body: some View {
        if !showMatched {
            VStack{
                Text("💖Choose Your favourites💖")
                    .font(.title)
                    .foregroundColor(Color.white)
                //line1
                HStack{
                    VStack{
                        Button(action: {
                            print("Round Action")
                        }) {
                            KFImage(URL(string:gamelink)!)
                                .resizable()
                                .frame(width:100, height:100)
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .bold()
                                .background(Color(red: 0.93, green: 0.69, blue: 0.68))
                                .clipShape(Circle())
                        }
                        .padding(20)
                        Text("🎮Gaming")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                    
                    VStack{
                        Button(action: {
                            print("Round Action")
                        }) {
                            KFImage(URL(string:animelink)!)
                                .resizable()
                                .frame(width:100, height:100)
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .bold()
                                .background(Color(red: 0.93, green: 0.69, blue: 0.68))
                                .clipShape(Circle())
                        }
                        .padding(20)
                        Text("🐣Anime")
                            .foregroundColor(Color.white)
                    }
                }
                
                //line2
                HStack{
                    VStack{
                        Button(action: {
                            print("Round Action")
                        }) {
                            KFImage(URL(string:kpoplink)!)
                                .resizable()
                                .frame(width:100, height:100)
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .bold()
                                .background(Color(red: 0.93, green: 0.69, blue: 0.68))
                                .clipShape(Circle())
                        }
                        .padding(20)
                        Text("👯‍♂️K-Pop")
                            .foregroundColor(Color.white)
                    }
                    
                    VStack{
                        Button(action: {
                            print("Round Action")
                        }) {
                            KFImage(URL(string:tvshowslink)!)
                                .resizable()
                                .frame(width:100, height:100)
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .bold()
                                .background(Color(red: 0.93, green: 0.69, blue: 0.68))
                                .clipShape(Circle())
                        }
                        .padding(20)
                        Text("📺TV-Shows")
                            .foregroundColor(Color.white)
                    }
                }
                
                //line3
                HStack{
                    VStack{
                        Button(action: {
                            print("Round Action")
                        }) {
                            KFImage(URL(string:musiclink)!)
                                .resizable()
                                .frame(width:100, height:100)
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .bold()
                                .background(Color(red: 0.93, green: 0.69, blue: 0.68))
                                .clipShape(Circle())
                        }
                        .padding(20)
                        Text("🎶Music")
                            .foregroundColor(Color.white)
                    }
                    
                    VStack{
                        Button(action: {
                            print("Round Action")
                        }) {
                            KFImage(URL(string:sportslink)!)
                                .resizable()
                                .frame(width:100, height:100)
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .foregroundColor(Color.white)
                                .bold()
                                .background(Color(red: 0.93, green: 0.69, blue: 0.68))
                                .clipShape(Circle())
                        }
                        .padding(20)
                        Text("🏀Sports")
                            .foregroundColor(Color.white)
                    }
                }
                Button(action: {match()}, label: {
                    Text("Match!")
                        .frame(width: 130, height: 50)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10)
                })
                
            }.frame(width: UIScreen.main.bounds.size.width, height:UIScreen.main.bounds.size.height)
                .background(Color(red: 51/255, green: 0, blue: 111/255))
        } else{
            VStack(alignment: .leading){
                KFImage(URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJwoKuHuYaRCssh42EH1w8JqGdCwosRkmaitDGwWzKuBLEhKn4Qy10hGs6ll1giPvUe58&usqp=CAU")!)
                    .resizable()
                
                HStack(){
                    VStack(alignment: .leading){
                        Text("Joseph Joestar")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text("Age: 70")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("Gender: male")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Tags:")
                            .font(.title)
                            .fontWeight(.semibold)
                        ForEach(["Gaming","Anime","Sports"], id:\.self){tag in Text("\(tag)")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.pink)
                            
                        }
                    }
                }
                Text("Self Introduction:")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top, 3)
                Text("Hi, how are you?")
                

            }
            .padding()
            .frame(width: 350, height: 650)
            .background(Color(red: 0.68, green: 0.79, blue: 0.93))
            .cornerRadius(30)
        }
    }
    
    func match(){
        print("match")
        self.showMatched = true
        
    }
}

struct selfMatchView_Previews: PreviewProvider {
    static var previews: some View {
        selfMatchView()
    }
}
