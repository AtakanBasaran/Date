//
//  AnswerButton.swift
//  Date?
//
//  Created by Atakan Başaran on 27.07.2024.
//

import SwiftUI

struct AnswerButton: View {
    
    let color: Color
    let answerTitle: String
    let action: () -> ()
    
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(color)
                .frame(width: 100, height: 50)
            
            Button {
                action()
            } label: {
                Text(answerTitle)
                    .foregroundStyle(.white)
                    .font(.title3)
                    .fontWeight(.medium)
            }

        }
        
    }
}

#Preview {
    AnswerButton(color: .red, answerTitle: "Yes") {
        print("tapped")
    }
}
