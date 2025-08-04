//
//  ContentView.swift
//  Wheater_app
//
//  Created by Cypto Beast on 28/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNight = false
    
    var body: some View {
        ZStack {
            
            BackgroundView(isNight: isNight)
            
            VStack {
                CityTextView(cityName: "Buenos Aires, AR")
                
                MainWeatherView(image: isNight ? "moon.stars.fill": "cloud.sun.fill", temp: "34")
                
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
                
                Button { isNight.toggle() }
                label: {
                    ButtonText(switchText: "Change to Night Time", backColor: .white, textColor: .blue)
                        
                    
                }
                    Spacer()
                
            }.onAppear {
                let button = ButtonText(switchText: "Change to Night Time", backColor: .white, textColor: .blue)
                    
                print (type(of: button.body))
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
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temp)°")
                .font(.system(size: 25, weight: .medium))
                .foregroundStyle(.white)
        }.padding(.horizontal, 8)
            
    }
}


struct BackgroundView: View {
    
    var isNight: Bool
 
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [isNight ? .black: .blue, isNight ? .gray: Color("LightBlue")]), startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient: Color.blue.gradient)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 30, weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding( )
    }
}

struct MainWeatherView: View {
    
    var image, temp: String
    
    var body: some View {
        VStack (spacing: 8) {
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text("\(temp)°")
                .font(.system(size: 75, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}


