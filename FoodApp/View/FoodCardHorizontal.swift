//
//  FoodCardHorizontal.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import SwiftUI

struct FoodCardHorizontal: View {
    @State private var date = Date()
    var body: some View {
        
        NavigationStack {
            ZStack {
                VStack {
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 40, bottomTrailing: 40, topTrailing: 0))
                        .frame(height: 120)
                    
                    Spacer()
                }
                .foregroundStyle(.bluenav)
                .ignoresSafeArea()
                
                
                VStack (alignment : .leading) {
                    Group {
                        Text(currentDate(from: date))
                            .foregroundStyle(.secondary)
                        Text("Your Last Viewed")
                            .font(.system(.title, design: .rounded))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                    .padding(.horizontal, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(Food.foodData) { food in
                                FoodCard(food: food)
                                    .frame(width: 300)
                            }
                        }
                        .padding()
                    }
                    
                }
                .navigationTitle("Food Order")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    Button{
                        print("Success")
                    }
                label:{
                    Image(systemName: "cart")
                        .foregroundStyle(.black)
                }
                }
                VStack {
                    Spacer()
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 30, bottomLeading: 0, bottomTrailing: 0, topTrailing: 30))
                        .frame(height: 90)
                    
                    
                }
                .foregroundStyle(.bluenav)
                .ignoresSafeArea()
                
            }
            
            
            
        }
        
        
        
    }
    private func currentDate(from date : Date)-> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM dd"
        return formatter.string(from: date)
    }
    
}

#Preview {
    FoodCardHorizontal()
}
