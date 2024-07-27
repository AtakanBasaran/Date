//
//  GradientColorView.swift
//  Date?
//
//  Created by Atakan Başaran on 27.07.2024.
//

import SwiftUI

struct GradientColorView: View {
    
    var body: some View {
        
        LinearGradient(colors: [
            
            Color.pink,
            Color(red: 1.0, green: 0.8, blue: 0.3), // Light pink
            Color(red: 1.0, green: 0.6, blue: 0.8), // Pink
            Color(red: 1.0, green: 0.4, blue: 0.6), // Deep pink
            Color(red: 1.0, green: 0.2, blue: 0.4),  // Romantic red-pink
            Color.purple
            
        ], startPoint: .bottomTrailing, endPoint: .topLeading)
        
        .ignoresSafeArea()
    }
}

#Preview {
    GradientColorView()
}
