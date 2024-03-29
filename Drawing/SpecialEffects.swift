//
//  SpecialEffects.swift
//  Drawing
//
//  Created by Gokhan Bozkurt on 5.05.2022.
//

import SwiftUI

struct SpecialEffects: View {
    @State private var amount = 0.0
    
    var body: some View {
        VStack {
          Image("resim")
                .resizable()
                .scaledToFit()
                .frame(width: 400,height: 400)
                .saturation(amount)
                .blur(radius: (1-amount)*20)
            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
        
       
       /*
         VStack {
             ZStack {
                 Circle()
                     .fill(.red)
                     .frame(width: 200 * amount)
                     .offset(x: -50, y: -80)
                     .blendMode(.screen)
                 Circle()
                     .fill(.green)
                     .frame(width: 200 * amount)
                     .offset(x: 50, y: -80)
                     .blendMode(.screen)
                 
                 Circle()
                     .fill(.blue)
                     .frame(width: 200 * amount)
                     .blendMode(.screen)
             }
             .frame(width: 300, height: 300)
             Slider(value: $amount)
                 .padding()
         }
         .frame(maxWidth: .infinity, maxHeight: .infinity)
         .background(.black)
         .ignoresSafeArea()
         */
        
        /*
         Image("resim")
            .colorMultiply(.mint)
         */
        /*
        ZStack{
            Image("resim")
            Rectangle()
                .fill(.purple)
                .blendMode(.multiply)
        }
       */
    }
}

struct SpecialEffects_Previews: PreviewProvider {
    static var previews: some View {
        SpecialEffects()
    }
}
