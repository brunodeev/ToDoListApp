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
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView()
                
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
                .padding(.top, -40)
                .background(Color.clear).scrollContentBackground(.hidden)
                
                Spacer()
                
                // Create account
                VStack{
                    Text("Novo por aqui?")
                    NavigationLink("Crie uma conta", destination: RegisterView())
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
