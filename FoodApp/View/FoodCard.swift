//
//  FoodCard.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import SwiftUI

struct FoodCard: View {
    var food : Food
    
    var body: some View {
        VStack {
            ImageHeader(data : food)
            FoodHeader(data : food)
                .padding([.top, .horizontal])
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red : 149/255, green: 165/255, blue: 166/255, opacity: 0.2), lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
        }
        
    }
}

#Preview {
    FoodCard(food: Food.foodData[0])
        .padding()
}





