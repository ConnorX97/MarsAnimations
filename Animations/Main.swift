//
//  Main.swift
//  Animations
//
//  Created by Sherzod Fayziev on 2022/04/30.
//

import SwiftUI

struct Main: View {
    
    
    @State private var half = false
    @State private var dim = false
    
    @State var lettersShowing: Double = 0
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack (spacing: 30) {
                Image ("Mars")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .scaleEffect(half ? 0.8 : 1.0)
                    .opacity(dim ? 0.4 : 1.0)
                    .animation(.easeInOut(duration: 1.0))
                    .onTapGesture {
                        self.dim.toggle()
                        self.half.toggle()
                    }
            }
            
            
            if half {
                ScrollView {
                    Text(mars.info)
                        .foregroundColor(.white)
                        .padding()
                    
                }
            }
        }
    }
}



struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
