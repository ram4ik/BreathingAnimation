//
//  ContentView.swift
//  BreathingAnimation
//
//  Created by ramil on 24/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var inCenter = true
    @State var inCenter2 = true
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.purple.opacity(0.5))
                .offset(x: inCenter ? 0 : 50)
                .rotationEffect(Angle(degrees: inCenter2 ? 0 : 360))
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.purple.opacity(0.5))
                .offset(x: inCenter ? 0 : -50)
                .rotationEffect(Angle(degrees: inCenter2 ? 0 : 360))
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.purple.opacity(0.5))
                .offset(y: inCenter ? 0 : 50)
                .rotationEffect(Angle(degrees: inCenter2 ? 0 : 360))
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.purple.opacity(0.5))
                .offset(y: inCenter ? 0 : -50)
                .rotationEffect(Angle(degrees: inCenter2 ? 0 : 360))
        }
        
        .onAppear() {
            let animation = Animation.linear(duration: 3)
            withAnimation(animation.repeatForever(autoreverses: true)) {
                self.inCenter = false
            }
            withAnimation(animation.repeatForever(autoreverses: false)) {
                self.inCenter2 = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
