//
//  AccessibilityColorsBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Nick Sarno on 6/20/23.
//

import SwiftUI

struct AccessibilityColorsBootcamp: View {
    
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency
    @Environment(\.colorSchemeContrast) var colorSchemeContrast
    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor
    @Environment(\.accessibilityInvertColors) var invertColors

    var body: some View {
        NavigationStack {
            VStack {
                
                Button("Button 1") {
                    
                }
                .foregroundColor(colorSchemeContrast == .increased ? .white : .primary)
                .buttonStyle(.borderedProminent)
                
                Button("Button 2") {
                    
                }
                .foregroundColor(.primary)
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                
                Button("Button 3") {
                    
                }
                .foregroundColor(.white)
                .foregroundColor(.primary)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Button("Button 4") {
                    
                }
                .foregroundColor(differentiateWithoutColor ? .white : .green)
                .buttonStyle(.borderedProminent)
                .tint(differentiateWithoutColor ? .black : .purple)
            }
            .font(.largeTitle)
//            .navigationTitle("Hi")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
//            .background(reduceTransparency ? Color.black : Color.black.opacity(0.5))
        }
    }
}

struct AccessibilityColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AccessibilityColorsBootcamp()
    }
}
