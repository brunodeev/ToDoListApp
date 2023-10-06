
import FirebaseAuth
import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email = ""           // Variaveis que serao observadas por fora, em outros arquivos
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func login() {
        guard validate() else {
            return
        }
        
        // Tentar logar
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Preencha todos os campos"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Utilize um email válido"
            return false
        }
        return true
    }
    
}
