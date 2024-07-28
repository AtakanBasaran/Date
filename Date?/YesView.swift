//
//  YesView.swift
//  Date?
//
//  Created by Atakan Başaran on 27.07.2024.
//

import SwiftUI

struct YesView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        
        ZStack {
            
            GradientColorView()
            
            ForEach(0..<20, id: \.self) { i in
                ConfettiShape()
                    .fill(randomColor())
                    .frame(width: 10, height: 10)
                    .position(x: CGFloat.random(in: 0...UIScreen.main.bounds.width), y: animate ? UIScreen.main.bounds.height : 0)
                    .animation(
                        Animation.linear(duration: Double.random(in: 2...4))
                            .repeatForever()
                            .delay(Double.random(in: 0...1)),
                        value: animate
                    )
            }
            
            HeartAnimationsView(animate: $animate)
            
            ZStack {
                
                Text("Thanks for saying yes 😍")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .scaleEffect(animate ? 1.2 : 0.7)
                    .opacity(animate ? 1 : 0.7)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(.pink).opacity(0.4)
                            .scaleEffect(animate ? 1.2 : 0.7)
                    )
                
            }
            
        }
        
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 4).repeatForever(autoreverses: true)) {
                animate.toggle()
            }
        })
        
    }
    
    func randomColor() -> Color {
        let colors = [
            Color(red: 1.0, green: 0.8, blue: 0.9), // Light pink
            Color(red: 1.0, green: 0.6, blue: 0.8), // Pink
            Color(red: 1.0, green: 0.4, blue: 0.6), // Deep pink
            Color(red: 1.0, green: 0.2, blue: 0.4)  // Romantic red-pink
        ]
        return colors.randomElement()!
    }
}


struct ConfettiShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addEllipse(in: rect)
        return path
    }
}

#Preview {
    YesView(animate: .constant(true))
}
