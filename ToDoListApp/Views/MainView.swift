//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Bruno César on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        // Header
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
        
        // Form
        Form{
            TextField("Email", text: $email)
                .padding()
                .background(.gray.opacity(0.15))
                .clipShape(.rect(cornerRadius: 8))
                .listRowSeparator(.hidden)
                
            SecureField("Senha", text: $password)
                .padding()
                .background(.gray.opacity(0.15))
                .clipShape(.rect(cornerRadius: 8))
                .listRowSeparator(.hidden)
            Button{
                
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.indigo)
                    Text("Login")
                        .foregroundStyle(.white)
                        .padding(.vertical, 8)
                        .bold()
                }
            }
            .padding(.top, 20)
        }
        .listRowSpacing(-10)
        .padding(.top, -20)
        .background(Color.clear).scrollContentBackground(.hidden)
        
        // Create account
        
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
