//
//  HeartAnimationsView.swift
//  Date?
//
//  Created by Atakan Başaran on 27.07.2024.
//

import SwiftUI

struct HeartAnimationsView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        
        AnimationHeart(color: .white)
            .offset(x: animate ? -100 : 100, y: animate ? -200 : -50)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .scaleEffect(animate ? 1: 1.5)
            .position(x: CGFloat.random(in: 0...UIScreen.main.bounds.width), y: animate ? UIScreen.main.bounds.height : 0)
        
        AnimationHeart(color: .orange)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .offset(x: animate ? 100 : -100, y: animate ? 200 : -100)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .pink)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .offset(x: animate ? 70 : 160, y: animate ? -800 : 300)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .purple)
            .offset(x: animate ? -130 : 50, y: animate ? -250 : 400)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .green)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .offset(x: animate ? 160 : -90, y: animate ? -300 : -50)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .blue)
            .offset(x: animate ? 140 : -150, y: animate ? 400 : -20)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .brown)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .offset(x: animate ? -60 : 100, y: animate ? -200 : -250)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .cyan)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .offset(x: animate ? 70 : -40, y: animate ? 100 : -250)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .mint)
            .offset(x: animate ? -110 : -30, y: animate ? 100 : 170)
            .rotationEffect(.degrees(animate ? 360 : 0), anchor: .center)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .indigo)
            .rotationEffect(.degrees(animate ? 0 : 360))
            .offset(x: animate ? -160 : 80, y: animate ? 300 : 140)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .yellow)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .offset(x: animate ? 100 : -70, y: animate ? -300 : 210)
            .scaleEffect(animate ? 1: 1.5)
        
        AnimationHeart(color: .red)
            .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
            .offset(x: animate ? 200 : 0, y: animate ? 220 : -50)
            .scaleEffect(animate ? 1: 1.7)
    }
}

//#Preview {
//    HeartAnimationsView(animate: true)
//}
