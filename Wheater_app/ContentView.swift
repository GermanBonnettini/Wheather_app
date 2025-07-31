//
//  ContentView.swift
//  Wheater_app
//
//  Created by Cypto Beast on 28/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue ,.white]), startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea(edges: .all)
            VStack {
                Text("Buenos Aires, AR")
                    .font(.system(size: 30, weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding( )
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
