//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Bruno César on 02/10/23.
//

import SwiftUI

struct LoginView: View {
                        
    @State var email = ""
    @State var password = ""
    @State var value: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView()
                
                // Form
                VStack {
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
                                                
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.indigo)
                                .frame(height: 50)
                            Text("Login")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                    .padding(.top, 15)
                }
                .padding(.horizontal)
                
                // Create account
                VStack{
                    Text("Novo por aqui?")
                    NavigationLink("Crie uma conta", destination: RegisterView())
                        .foregroundStyle(.indigo)
                }
                .padding(.top, 200)
                
            }
        }
    }
}

#Preview {
    LoginView()
}
