//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Bruno César on 02/10/23.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let color: Color
    let angle: CGFloat
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
                .foregroundStyle(color)
                .rotationEffect(Angle(degrees: 12))
            VStack{
                Text(title)
                    .font(.system(size: 45))
                    .foregroundStyle(.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 21))
                    .foregroundStyle(.white)
                    .bold()
            }
            .padding(.top, 65)
        }
        .offset(y: angle)
    }
}

#Preview {
    HeaderView(title: "Test", subtitle: "Test", color: .indigo, angle: -120)
}
