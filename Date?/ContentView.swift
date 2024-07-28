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
    @State var yesTapped = false
    
    var offsets: [[CGFloat]] = [
        [-200, -350], [100, 200], [-200, 200], [100, -350], [50, 150], [-150, -200], [50, -200], [-150, 150], [0,0]
    ]
    
    
    var body: some View {
        
        ZStack {
            
            GradientColorView()
            
            HeartAnimationsView(animate: $animate)
            
            
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
                            yesTapped = true
                            counter = 0
                            scale = 1
                            offsetX = 0
                            offsetY = 0
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
            
            
            if yesTapped {
                YesView(animate: $animate)
            }
            
            
        }
        .overlay(alignment: .topLeading, content: {
            
            if yesTapped {
                
                Button(action: {
                    yesTapped = false
                }, label: {
                    
                    ZStack {
                        Circle()
                            .frame(width: 50)
                            .foregroundStyle(.pink.opacity(0.7))
                        
                        Image(systemName: "arrowshape.backward.fill")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)

                    }
                })
                .padding(.leading, 15)
            }
        })
        
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                animate.toggle()
            }
        })
        
        .gesture(
            DragGesture()
                .onChanged({ value in
                    if value.translation.width > 50 {
                        
                        withAnimation(.easeInOut(duration: 2)) {
                            yesTapped = false
                        }
                    }
                })
        
        )
    }
    
    
}



#Preview {
    ContentView()
}
