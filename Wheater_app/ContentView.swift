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
            LinearGradient(gradient: Gradient(colors: [.blue ,.lightBlue]), startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea(edges: .all)
            VStack {
                Text("Buenos Aires, AR")
                    .font(.system(size: 30, weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding( )
                
                VStack (spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    Text("34°")
                    .font(.system(size: 75, weight: .medium))
                    .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                HStack {
                    weekWheather(dayOfWeek: "TUE",
                                 imageName: "cloud.rain.fill",
                                 temp: 10)
                    
                    weekWheather(dayOfWeek: "WED",
                                 imageName: "sun.max.fill",
                                 temp: 30)
                    
                    weekWheather(dayOfWeek: "THU",
                                 imageName: "wind",
                                 temp: 20)
                    
                    weekWheather(dayOfWeek: "FRI",
                                 imageName: "cloud.sun.rain.fill",
                                 temp: 25)
                    
                    weekWheather(dayOfWeek: "SAT",
                                 imageName: "cloud.sun.fill",
                                 temp: 10)
                }
                Spacer()
                
                Button { print("Tapped")}
                label: { Text ("Change Day Time")
                        .frame(width: 330, height: 60)
                        .background(Color .blue)
                        .foregroundStyle(.white)
                        .font(.system(size: 25))
                        .clipShape(.capsule)
                    
                }
                    Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct weekWheather: View {
    
    var dayOfWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium,design: .default))
                .foregroundColor(.black)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temp)°")
                .font(.system(size: 25, weight: .medium))
                .foregroundStyle(.white)
        }.padding(.horizontal, 8)
            
    }
}

