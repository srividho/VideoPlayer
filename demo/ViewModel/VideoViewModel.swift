//
//  VideoViewModel.swift
//  demo
//
//  Created by Sri on 02/07/22.
//

import SwiftUI
import AVFoundation

class VideoViewModel: ObservableObject {
    
    @Published var video: [ListItem] = []
    
    func shuffleOrder() {
        video.shuffle()
    }
    
    func reverseOrder() {
        video.reverse()
    }
    
}

var videos = [
                 
    ListItem(title: "Cooking Tips",
             subtitle1: "Cooking Essential Tips",
             image: "cooking-playlist-FT-MAG0721",
             videopath: "Try this 'EGG, POTATO AND TOMATO' breakfast recipe. Pwede i-ulam sa kanin o i-palaman sa tasty bread"),

    ListItem(title: "Find Your Hobbies",
             subtitle1: "Finding your skills",
             image: "hobbies-leisure-lifestyle-pastime-fun-concept-74926121",
             videopath: "Hobbies"),
 
    ListItem(title: "Daily Workouts",
             subtitle1: "To stay healthy & fit",
             image: "ab67616d0000b273683b7c707852a760bf55840f",
             videopath: "Can You Work Out While Sore?"),
   
    ListItem(title: "Despicable Me Movies",
             subtitle1: "Adventure of Minions",
             image: "MV5BMjEwNjE5MTg1N15BMl5BanBnXkFtZTgwODM1NDgwNjE@._V1_",
             videopath: "I Am Groot | Official Trailer | Disney+"),
    
    ListItem(title: "iOS Development",
             subtitle1: "iOS & Swift Bootcamp",
             image: "IMG_4454-3-900x900",
             videopath: "Teaching Tips | Experiential Learning Model"),
    
    ListItem(title: "Cartoons - Mr.Bean",
             subtitle1: "Mr.Bean comedy",
             image: "ab67616d0000b273ed237ef5c6e584ea2ac935ae",
             videopath: "Star Wombs | Pencilmation Cartoon #26"),
    
    ListItem(title: "How to cook Briyani!",
             subtitle1: "Cooking your favourite recepie",
             image: "cooking-playlist-FT-MAG0721",
             videopath: "1 minute healthy sweet recipe | easy sweet recipe | evening snack recipe"),
    
    ListItem(title: "15mins Daily Exercise",
             subtitle1: "Keeps you mentally & physically fit",
             image: "ab67616d0000b273683b7c707852a760bf55840f",
             videopath: "What happens inside your body when you exercise?"),
    
    ListItem(title: "Reading Books Daily",
             subtitle1: "Brain-boosting rewards",
             image: "great-books-for-anytime-2000",
             videopath: "Here are 7 hobbies that science says will make you smarter"),
 
    ListItem(title: "Cartooons - Phineas & Ferb",
             subtitle1: "Animated comedy series",
             image: "HD-wallpaper-phineas-and-ferb-candice-disney-ferb-cartoon-phineas",
             videopath: "Taxi and I Know It | Pencilmation Cartoon #25")

]


