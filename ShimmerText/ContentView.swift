//
//  ContentView.swift
//  ShimmerText
//
//  Created by Alisa Serhiienko on 13.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            Shimmer(title: "SwiftUI")
            
            Spacer()
            
            Text("follow @alise.code for more")
                .font(.system(size: 22, weight: .regular))
                .padding(.bottom, 16)
                .foregroundStyle(.white.opacity(0.6))

        }
    }
}

#Preview {
    ContentView()
}
