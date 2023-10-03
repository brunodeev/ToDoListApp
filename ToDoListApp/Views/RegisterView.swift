//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Bruno César on 02/10/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Registrar", subtitle: "Criar nova conta", color: .teal)
            
            // Form
            VStack {
                TextField("Nome", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .background(.gray.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 8))
                
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .background(.gray.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 8))
                
                SecureField("Senha", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .background(.gray.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 8))
            
                SecureField("Confirmar senha", text: $confirmPassword)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .background(.gray.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 8))
                                            
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.teal)
                            .frame(height: 50)
                        Text("Login")
                            .foregroundStyle(.white)
                            .bold()
                    }
                }
                .padding(.top, 15)
            }
            .offset(y: -40)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
