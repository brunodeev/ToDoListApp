//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Bruno César on 02/10/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                .foregroundStyle(.indigo)
                .rotationEffect(Angle(degrees: 12))
            VStack{
                Text("To Do List")
                    .font(.system(size: 45))
                    .foregroundStyle(.white)
                    .bold()
                Text("Obtenha o controle")
                    .font(.system(size: 21))
                    .foregroundStyle(.white)
                    .bold()
            }
            .padding(.top, 40)
        }
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
