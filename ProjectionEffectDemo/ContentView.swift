//
//  ContentView.swift
//  ProjectionEffectDemo
//
//  Created by vignesh kumar c on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    
    let transform: CGAffineTransform = {
        var transform = CGAffineTransform.identity
        transform.c = tan(0.7)
        return transform
    }()
    
    var body: some View {
            Image(systemName: "tshirt.fill")
                .font(.system(size: 200))
                .foregroundStyle(
                    LinearGradient(colors: [.yellow, .orange], startPoint: .leading, endPoint: .trailing)
                )
                .projectionEffect(ProjectionTransform(transform))
                .offset(x: -90)
                .shadow(color: .gray.opacity(0.5), radius: 10, y: 100)
        
    }
}

#Preview {
    ContentView()
}
