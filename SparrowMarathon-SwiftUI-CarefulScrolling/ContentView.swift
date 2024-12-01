//
//  ContentView.swift
//  SparrowMarathon-SwiftUI-CarefulScrolling
//
//  Created by Sergey Leontiev on 1.12.24..
//

import SwiftUI

struct ContentView: View {
    private let bottomHeight: CGFloat = 50
    
    var body: some View {
        TabView {
            Tab("First", systemImage: "star.fill") {
                ZStack(alignment: .bottom) {
                    ScrollView {
                        LazyVStack(alignment: .center, spacing: 10) {
                            ForEach(1...100, id: \.self) { number in
                                Text("\(number)")
                                    .font(.title)
                                    .foregroundStyle(.gray)
                                    .opacity(0.5)
                            }
                        }
                    }.contentMargins(.bottom, bottomHeight, for: .automatic)
                        
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: bottomHeight)
                        .opacity(0.8)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
