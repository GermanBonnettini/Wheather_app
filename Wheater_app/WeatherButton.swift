//
//  WeatherButton.swift
//  Wheater_app
//
//  Created by H4MM3R-9 on 01/08/2025.
//

import SwiftUI

struct ButtonText: View {
    
    var switchText: String
    var backColor, textColor: Color
    
    var body: some View {
        Text (switchText)
            .frame(width: 330, height: 60)
            .background(backColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20))
            .clipShape(.capsule)
    }
}
