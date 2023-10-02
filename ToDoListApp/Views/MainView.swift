//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Bruno César on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Header
        ZStack{
            Rectangle()
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                .foregroundStyle(.red)
                .rotationEffect(Angle(degrees: 12))
            VStack{
                Text("To Do List")
                    .font(.system(size: 45))
                    .foregroundStyle(.white)
                    .bold()
                Text("Tenha o controle")
                    .font(.system(size: 23))
                    .foregroundStyle(.white)
                    .bold()
            }
            .padding(.top, 40)
         }
        .offset(y: -100)
        Spacer()
    }
}

#Preview {
    ContentView()
}
