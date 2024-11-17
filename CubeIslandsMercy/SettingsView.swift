//
//  SettingsView.swift
//  CubeIslandsMercyApp
//
//  Created by Stafer on 18/11/2024.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    @Environment(\.requestReview) var requestReview
    @EnvironmentObject private var navigationManager: NavigationMng
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {
                        navigationManager.viewCh = .menu
                    }
                } label: {
                    Image("bkimg")
                }

                Spacer()
                
             
                
                Spacer()
                
                Image("bkimg")
                    .opacity(0)
            }
            
            VStack(spacing: 15) {
               

                
                Button {
                    if let url = URL(string: "https://www.dropbox.com/scl/fi/ib3v1cnym2oem5ocduv6a/box-island.paper?rlkey=gv0jxdlt1dorc5jgax89uj03o&st=pahlyd49&dl=0") {
                        UIApplication.shared.open(url)
                    }
                } label: {
                    ButtonMine(text: "Privacy", size: 35)
                }

                Button {
                    requestReview()
                } label: {
                    ButtonMine(text: "Rate", size: 35)
                }
            }
            .padding(.top, 80)
            
            Spacer()
        }
        .padding()
    }
}
