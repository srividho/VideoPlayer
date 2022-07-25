//
//  TabView.swift
//  demo
//
//  Created by Sri on 02/07/22.
//

import SwiftUI

struct PlayListTab: View {
 
    var body: some View {
                
        NavigationView {
            
            ScrollView {
               //HobbiesPlaylist
                VStack () {
                    HStack{
                        NavigationLink(destination: HobbiesPlaylist()) {
                            ZStack(alignment: .bottomTrailing){
                                ZStack {
                                    Rectangle()
                                        .frame(width: 170, height: 170)
                                        .cornerRadius(30)
                                    
                                    Text("Hobbies")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                    }
                                Image(systemName: "list.dash")
                                   .foregroundColor(Color.white)
                                   .padding()
                            } .foregroundColor(Color.black)
                        }
                //WorkoutPlaylist
                        NavigationLink(destination: WorkoutPlaylist()) {
                            ZStack(alignment: .bottomTrailing){
                                ZStack {
                                    Rectangle()
                                        .frame(width: 170, height: 170)
                                        .cornerRadius(30)
                
                                    Text("Workout")
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold)
                                    }
                                Image(systemName: "list.dash")
                                   .foregroundColor(Color.white)
                                   .padding()
                            } .foregroundColor(Color.black)
                        }
                    }
                }
                //CookingPlaylist
                    VStack{
                        HStack {
                            NavigationLink(destination: CookingPlaylist()) {
                                ZStack(alignment: .bottomTrailing){
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 170, height: 170)
                                            .cornerRadius(30)
                    
                                        Text("Cooking")
                                            .foregroundColor(.white)
                                            .fontWeight(.semibold)
                                        }
                                    Image(systemName: "list.dash")
                                       .foregroundColor(Color.white)
                                       .padding()
                                } .foregroundColor(Color.black)
                            }
                //MoviesPlaylist
                            NavigationLink(destination: MoviesPlaylist()) {
                                ZStack(alignment: .bottomTrailing){
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 170, height: 170)
                                            .cornerRadius(30)
                    
                                        Text("Movies")
                                            .foregroundColor(.white)
                                            .fontWeight(.semibold)
                                        }
                                    Image(systemName: "list.dash")
                                       .foregroundColor(Color.white)
                                       .padding()
                                } .foregroundColor(Color.black)
                            }
                        }
                    }
                //LearningPlaylist
                    VStack{
                        HStack{
                            NavigationLink(destination: LearningsPlaylist()) {
                                ZStack(alignment: .bottomTrailing){
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 170, height: 170)
                                            .cornerRadius(30)
                    
                                        Text("Learnings")
                                            .foregroundColor(.white)
                                            .fontWeight(.semibold)
                                        }
                                    Image(systemName: "list.dash")
                                       .foregroundColor(Color.white)
                                       .padding()
                                } .foregroundColor(Color.black)
                            }
                //CartoonsPlaylist
                            NavigationLink(destination: CartoonsPlaylist()) {
                                ZStack(alignment: .bottomTrailing){
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 170, height: 170)
                                            .cornerRadius(30)
                    
                                        Text("Cartoons")
                                            .foregroundColor(.white)
                                            .fontWeight(.semibold)
                                        }
                                    Image(systemName: "list.dash")
                                       .foregroundColor(Color.white)
                                       .padding()
                                } .foregroundColor(Color.black)
                            }
                        }
                    }
            }
            .navigationBarTitle("Playlists")
            .padding()
        }
     }
  }


struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        PlayListTab()
    }
}


    

   
    
