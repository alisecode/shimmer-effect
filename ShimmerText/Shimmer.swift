//
//  Shimmer.swift
//  ShimmerText
//
//  Created by Alisa Serhiienko on 13.02.2024.
//

import SwiftUI

struct Shimmer: View {
    var title: String
    @State var shimmer = false
    
    var body: some View {
        ZStack {
            Text(title)
                .font(.system(size: 64, weight: .heavy))
                .foregroundStyle(.white.opacity(0.25))
            
            HStack(spacing: 0) {
                ForEach(0..<title.count, id: \.self) { index in
                    Text(String(title[title.index(title.startIndex, offsetBy: index)]))
                        .font(.system(size: 64, weight: .heavy))
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    Color(red: 255/255, green: 87/255, blue: 65/255),
                                    Color(red: 226/255, green: 33/255, blue: 10/255)
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                }
            }
            .mask {
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(red: 235/255, green: 79/255, blue: 30/255),
                                Color.white,
                                Color(red: 232/255, green: 73/255, blue: 53/255)
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .rotationEffect(.init(degrees: 64))
                    .padding(15)
                    .offset(x: -150)
                    .offset(x: shimmer ? 400 : 0)
            }
            .onAppear {
                withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: false)) {
                    shimmer.toggle()
                }
            }
        }
    }
}


