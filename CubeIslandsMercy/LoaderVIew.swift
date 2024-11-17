//
//  LoaderVIew.swift
//  CubeIslandsMercyApp
//
//  Created by Stafer on 18/11/2024.
//

import SwiftUI

struct LoaderVIew: View {
    @EnvironmentObject private var navigatioManager: NavigationMng
    @State var loadingProcess: Bool = false
    var body: some View {
        ZStack {
         
            
            VStack {
                Spacer()
                HStack(spacing: 6) {
                    Rectangle()
                        .fill(Color.init(hex: "#000000"))
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(Color.init(hex: "#FFFFFF"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4), value: loadingProcess)
                        }
                        .frame(width: 54, height: 12)
                    
                    Rectangle()
                        .fill(Color.init(hex: "#000000"))
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(Color.init(hex: "#FFFFFF"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(0.4), value: loadingProcess)
                        }
                        .frame(width: 54, height: 12)
                    
                    Rectangle()
                        .fill(Color.init(hex: "#000000"))
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(Color.init(hex: "#FFFFFF"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(0.8), value: loadingProcess)
                        }
                        .frame(width: 54, height: 12)
                    
                    Rectangle()
                        .fill(Color.init(hex: "#000000"))
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(Color.init(hex: "#FFFFFF"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(1.2), value: loadingProcess)
                        }
                        .frame(width: 54, height: 12)
                    
                    Rectangle()
                        .fill(Color.init(hex: "#000000"))
                        .overlay(alignment: .leading) {
                            Rectangle()
                                .fill(Color.init(hex: "#FFFFFF"))
                                .frame(width: 54 * (loadingProcess ? 1 : 0))
                                .animation(Animation.linear(duration: 0.4).delay(1.6), value: loadingProcess)
                        }
                        .frame(width: 54, height: 12)
                }
            }
            .padding(.vertical)
            .onAppear() {
                loadingProcess = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        self.navigatioManager.viewCh = .menu
                    }
                }
            }
        }
    }
}
