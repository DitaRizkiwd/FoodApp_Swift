//
//  FoodHeader.swift
//  FoodApp
//
//  Created by MACBOOK PRO on 16/04/24.
//

import SwiftUI

struct FoodHeader: View {
    var data : Food
    var body: some View {
        HStack {
            VStack(alignment : .leading, spacing: 8){
                Text(data.category.joined(separator: ", "))
                    .font(.headline)
                    .foregroundStyle(.secondary)
                Text(data.heading)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3, reservesSpace: true)
                Text("Chef By \(data.chef)" .uppercased())
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding(.top, 16)
            .padding(.bottom, 16)
            Spacer()
        }
    }
}
#Preview {
    FoodHeader(data: Food.foodData[0])
}
