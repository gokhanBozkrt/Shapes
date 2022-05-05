//
//  DrawingGroup.swift
//  Drawing
//
//  Created by Gokhan Bozkurt on 5.05.2022.
//

import SwiftUI

struct ColorCyclingCircle: View {
    var amount = 0.0
    var steps = 100
    
    var body: some View {
        ZStack {
            ForEach(0..<steps) { value in
                Circle()
               // Rectangle()
                    .inset(by: Double(value))
                    .strokeBorder(
                        LinearGradient(
                            colors: [
                                color(for: value, brightness: 1),
                                color(for: value, brightness: 0.5),
                                color(for: value, brightness: 0.7)],
                            startPoint: .top,
                            endPoint: .bottom)
                       , lineWidth: 2)
                // .strokeBorder(color(for: value, brightness: 1), lineWidth: 2)
            }
        }
        // to make processing faster
        .drawingGroup()
    }
    
    func color(for value: Int, brightness: Double) -> Color {
        var targeHue = Double(value) / Double(steps) + amount
        
        if targeHue > 1 {
            targeHue -= 1
        }
        return Color(hue: targeHue, saturation: 1, brightness: brightness)
    }
}

struct DrawingGroup: View {
    @State private var colorcycle = 0.0
    var body: some View {
        VStack {
            ColorCyclingCircle(amount: colorcycle)
                .frame(width: 300, height: 300)
            Slider(value: $colorcycle)
                .padding()
        }
    }
}

struct DrawingGroup_Previews: PreviewProvider {
    static var previews: some View {
        DrawingGroup()
    }
}
