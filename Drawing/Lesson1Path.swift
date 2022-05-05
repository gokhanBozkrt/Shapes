//
//  Lesson1Path.swift
//  Drawing
//
//  Created by Gokhan Bozkurt on 4.05.2022.
//

import SwiftUI

struct Lesson1Path: View {
    var body: some View {
        Path { path in
           // Different views every iphone lesson2 try to deal with it
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
          //  path.closeSubpath()
        }
       // .stroke(.blue,lineWidth: 10)
        //.fill(.blue)
        .stroke(.blue,style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct Lesson1Path_Previews: PreviewProvider {
    static var previews: some View {
        Lesson1Path()
    }
}
