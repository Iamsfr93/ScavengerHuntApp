//
//  SampleData.swift
//  ScavengerHuntApp
//
//  Created by Syed Fahad Rasheed on 2026-06-04.
//

import Foundation

struct SampleData {
    
    //using array of huntitems
    static func sampleItems() -> [HuntItem] {
        //local GTA businesses and their associated hunt parameters

        return [ HuntItem (

            businessName: "Tim Hortons",
            //winner get cup
            hiddenItemName: "Golden Coffee Cup",
            clue: "I wear a red jacket, serve double-doubles by the million, and my Timbits are a national treasure.",
            
            imageName: "timhortons"),
                 
                 HuntItem (
                     //declaring business
                     businessName: "Cineplex",
                     //winner get ticket
                     hiddenItemName: "Golden Movie Ticket ",
                     clue: "I have silver screens and buttered popcorn dreams, where the lights go down to bring stories to life.",
                     imageName: "Cineplex"),
                 
                 HuntItem (
                     //declaring business
                     businessName: "Chapters",
                     //winner get Bookmark
                     hiddenItemName: "Wise Owl Bookmark",
                     clue: "Find me among thousand of stories",
                     imageName: "Chapters"),
                 
                 HuntItem (
                     //declaring business
                     businessName: "Pizza Hut",
                     //winner get free Pizza
                     hiddenItemName: "Golden Pizza Slice",
                     clue: "I have a crust and a crown of cheese, but the more you slice me, the more I please. ",
                     imageName: "Pizza"),
            
                 HuntItem (
                     //declaring business
                     businessName: "Brampton Library",
                     //winner get free Pizza
                     hiddenItemName: "Library Card",
                     clue: "I hold thousands of stories, waive your late fees, and let you travel the world without ever leaving Peel.",
                     imageName: "library"),
                 
                 
                 HuntItem(
                    businessName: "Floristry T.O.",
                          //winner get free flower
                          hiddenItemName:"rose",
                          clue: "I speak in petals and arrange your emotions in vases, bringing a touch of Toronto's blooming elegance to every occasion.",
                          imageName: "flower"),
                 
                 HuntItem(
                    businessName: "Punjab Sports Canada Ltd",
                          //winner get free soccerball
                          hiddenItemName:"SoccerBall",
                          clue: "I host the thunder of kabaddi and the clash of the cricket bat, bringing the heartbeat of Punjabi sports to the Canadian turf.",
                          imageName: "footBall"),
                 
                 HuntItem(
                    businessName: "MusicM Inc",
                           //winner get free tuning

                          hiddenItemName: "Guitar",
                          clue: "I tune your strings, repair your brass, and give Toronto's melodies a place to grow.",
                          imageName: "music"),
                 
                 HuntItem(
                    businessName: "Cake engineers ca",
                          //winner get free bread
                          hiddenItemName:"CupCake",
                          clue: "I shape your sweet dreams with layers of icing, engineering custom bakes that make every Toronto celebration a slice of perfection.",
                          imageName: "Bakery"),
                 
                 

                 HuntItem(
                    businessName: "Ice Cream Cafe",
                          //winner get free icecream
                          hiddenItemName:"Sundae",
                          clue: "I serve frozen scoops of happiness in a cone, making your sunny GTA afternoon melt into pure joy.",
                          imageName: "Icecream"),
                 
                 
                 
                 
                 
        ] // end of array
    } // end of functions
    
 
    
    
}
