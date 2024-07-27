//
//  ContentView.swift
//  Date?
//
//  Created by Atakan Başaran on 27.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var animate = true
    @State var scale: CGFloat = 1
    @State var offsetX: CGFloat = 0
    @State var offsetY: CGFloat = 0
    @State var counter = 0
    
    var offsets: [[CGFloat]] = [
    [-200, -350], [100, 200], [-200, 200], [100, -350], [50, 150], [-150, -200], [50, -200], [-150, 150], [0,0]
    ]
    
    
    var body: some View {
        
        ZStack {
            
            GradientColorView()
            
            AnimationHeart(color: .white)
                .offset(x: animate ? -100 : 100, y: animate ? -200 : -50)
                .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
                .scaleEffect(animate ? 1: 1.5)
            
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
                .rotationEffect(.degrees(animate ? 0 : 360), anchor: .center)
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
            
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.purple).opacity(0.4)
                    .frame(width: 320, height: 160)
                
                
                VStack(spacing: 30) {
                    
                    Text("Will you go on a date with me?")
                        .font(.title2)
                        .foregroundStyle(.white)
                        
                    
                    HStack(spacing: 25) {
                        
                        AnswerButton(color: .green, answerTitle: "Yes") {
                            
                        }
                        
                        AnswerButton(color: .red, answerTitle: "No") {
                            
                            withAnimation(.bouncy) {
                                
                                offsetX = offsets[counter][0]
                                offsetY = offsets[counter][1]
                                counter += 1
                                scale -= 0.05
                            }
                            
                            if counter == 9 {
                                counter = 0
                                scale = 1
                            }
                            
                            
                        }
                        .offset(x: offsetX, y: offsetY)
                        .scaleEffect(scale)
                        
                    }
                }
            }
            .padding(.top, 150)
            
                
            
            
            
            
            
        }
        
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 5).speed(0.7).repeatForever(autoreverses: true)) {
                animate.toggle()
            }
        })
    }
    
        
}



#Preview {
    ContentView()
}
