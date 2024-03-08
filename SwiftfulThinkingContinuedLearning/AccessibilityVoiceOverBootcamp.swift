//
//  AccessibilityVoiceOverBootcamp.swift
//  SwiftfulThinkingContinuedLearning
//
//  Created by Nick Sarno on 6/20/23.
//

import SwiftUI

struct AccessibilityVoiceOverBootcamp: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Toggle("Volume", isOn: $isActive)
                    
                    HStack {
                        Text("Volume")
                        Spacer()
                        
                        Text(isActive ? "TRUE" : "FALSE")
                            .accessibilityHidden(true)
                    }
                    .background(Color.black.opacity(0.001))
                    .onTapGesture {
                        isActive.toggle()
                    }
                    .accessibilityElement(children: .combine)
                    .accessibilityAddTraits(.isButton)
                    .accessibilityValue(isActive ? "is on" : "is off")
                    .accessibilityHint("Double tap to toggle setting.")
                    .accessibilityAction {
                        isActive.toggle()
                    }
                    
                } header: {
                    Text("PREFERENCES")
                }

                Section {
                    Button("Favorites") {
                        
                    }
                    .accessibilityRemoveTraits(.isButton)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "heart.fill")
                    }
                    .accessibilityLabel("Favorites")

                    Text("Favorites")
                        .accessibilityAddTraits(.isButton)
                        .onTapGesture {
                            
                        }
                    
                } header: {
                    Text("APPLICATION")
                }
                
                VStack {
                    Text("CONTENT")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.secondary)
                        .font(.caption)
                        .accessibilityAddTraits(.isHeader)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            
                            ForEach(0..<10) { x in
                                VStack {
                                    Image("steve-jobs")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                    
                                    Text("Item \(x)")
                                }
                                .onTapGesture {
                                    
                                }
                                .accessibilityElement(children: .combine)
                                .accessibilityAddTraits(.isButton)
                                .accessibilityLabel("Item \(x). Image of Steve Jobs.")
                                .accessibilityHint("Double tap to open.")
                                .accessibilityAction {
                                    
                                }
                            }
                        }
                    }
                }

            }
            .navigationTitle("Settings")
        }
    }
}

struct AccessibilityVoiceOverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AccessibilityVoiceOverBootcamp()
    }
}
