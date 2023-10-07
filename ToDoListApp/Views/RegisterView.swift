
import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Registrar", subtitle: "Criar nova conta", color: .teal, angle: -120)
            
            // Form
            VStack {
                TextField("Nome", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .background(.gray.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 8))
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .background(.gray.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 8))
                
                SecureField("Senha", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .background(.gray.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 8))
            
                SecureField("Confirmar senha", text: $viewModel.confirmPassword)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding()
                    .background(.gray.opacity(0.15))
                    .clipShape(.rect(cornerRadius: 8))
                                            
                Button {
                    viewModel.register()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.teal)
                            .frame(height: 50)
                        Text("Registrar")
                            .foregroundStyle(.white)
                            .bold()
                    }
                }
                .padding(.top, 15)
            }
            .offset(y: -40)
            .padding(.horizontal)
            .toolbar(.hidden, for: .navigationBar)
            
            Spacer()
        }
    }
    
}

#Preview {
    RegisterView()
}
