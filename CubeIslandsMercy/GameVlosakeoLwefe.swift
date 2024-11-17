//
//  NineTeenGameView.swift
//  CubeIslandsMercyApp
//
//  Created by Stafer on 18/11/2024.
//

import SwiftUI

struct GameVlosakeoLwefe: View {
    @State var showImage: Bool = true
    @State var animation: Bool = false
    @EnvironmentObject private var navigationManager: NavigationMng
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        withAnimation {
                            navigationManager.viewCh = .menu
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.init(hex: "#69110A"))
                            .overlay {
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color.init(hex: "#EC4330")
                                        ,lineWidth: 6)
                                
                                Text("HOME")
                                    .font(.system(size: 30, weight: .semibold))
                                   
                                    .foregroundStyle(.white)
                            }
                            .frame(width: 100, height: 40)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                ZStack {
                    WKWebViewRepresentable(url: URL(string: "https://plays.org/game/cubic-lands/")!, onLoadCompletion: {
                        showImage = false
                        //            loadingFinished = true
                    })
                    
                    Image("lokge")
                        .scaleEffect(animation ? 1 : 0.8)
                        .cornerRadius(50)
                        .animation(Animation.bouncy(duration: 0.2).repeatForever(), value: animation )
                        .opacity(showImage ? 1 : 0)
                        .onAppear() {
                            animation = true
                        }
                }
            }
            .padding(.vertical)
        }
    }
}
