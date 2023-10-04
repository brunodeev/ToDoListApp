
import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel() // Instancia da classe observada
        
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Controle tudo", color: .indigo, angle: -140)
                
                // Form
                VStack {
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
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                            .font(.system(size: 14))
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                            .padding(EdgeInsets(top: 3, leading: 0, bottom: 0, trailing: 5))
                    }
                                                
                    Button {
                        viewModel.login()
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
                .padding(.top, 160)
                
            }
        }
    }
}

#Preview {
    LoginView()
}
