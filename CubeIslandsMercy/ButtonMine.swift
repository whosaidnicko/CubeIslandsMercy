//
//  ButtonMine.swift
//  CubeIslandsMercyApp
//
//  Created by Stafer on 18/11/2024.
//

import SwiftUI


struct ButtonMine: View {
    let text: String
    @State var size: CGFloat?
    var body: some View {
        Rectangle()
            .fill(Color.init(hex: "#69110A"))
            .overlay {
                Rectangle()
                    .stroke(Color.init(hex: "#EC4330")
                        ,lineWidth: 6)
                
                Text(text)
                    .font(.system(size: size == nil ? 52 : size!, weight: .semibold))
                   
                    .foregroundStyle(.white)
            }
            .frame(width: 242, height: 86)
        
//
    }
}
