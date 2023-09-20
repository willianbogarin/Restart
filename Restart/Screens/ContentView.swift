//
//  ContentView.swift
//  Restart
//
//  Created by Willian Bogarin Jr on 2023. 09. 19..
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut(duration: 1.3), value: isOnboardingViewActive)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
