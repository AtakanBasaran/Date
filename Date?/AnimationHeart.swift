//
//  AnimationHeart.swift
//  Date?
//
//  Created by Atakan Başaran on 27.07.2024.
//

import SwiftUI

struct AnimationHeart: View {
    
    let color: Color
    
    var body: some View {
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(color)
        
    }
}

#Preview {
    AnimationHeart(color: .red)
}
