//
//  Food.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import Foundation

struct Food : Identifiable{
    let id = UUID()
    let image : String
    let category : [String]
    let heading : String
    let chef : String
    let location : String
}

//Mark: - DUMMY DATA
extension Food{
    static let foodData : [Food] = [
        Food(image: "carbonara",
             category: ["Dine in", "Take Away", "Delivery"],
             heading: "Indulge in Creamy Linguine Carbonara",
             chef: "Giovani Delizioso",
             location: "Restorante bella cucina"),
        Food(image: "friedrice",
             category: ["Delivery"],
             heading: "Spicy Fried Rice with Sizzle Beef",
             chef: "Siti",
             location: "Warung Rasa Nusantara"),
        Food(image: "mieayam",
             category: ["Take Away", "Delivery"],
             heading: "Savor the Irresistible Noodle",
             chef: "Budi Santoso",
             location: "Warung Makan Mas Budi"),
        Food(image: "salmonsteak",
             category: ["Dine in", "Take Away", "Delivery"],
             heading: "Grilled Citrus Salmon Steak",
             chef: "Ari Wijaya",
             location: "Seafood Delights Bistro")
        
    ]
}

