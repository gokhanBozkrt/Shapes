//
//  Lesson3.swift
//  Drawing
//
//  Created by Gokhan Bozkurt on 5.05.2022.
//

import SwiftUI

struct Lesson3: View {
    var body: some View {
        Arc(startAngle: .degrees(-90), endAngle: .degrees(90), clockWise: true)
            .strokeBorder(.blue, lineWidth: 40)
        /*Circle()
            .strokeBorder(.blue, lineWidth: 40)
         */
    }
}

struct Lesson3_Previews: PreviewProvider {
    static var previews: some View {
        Lesson3()
    }
}
