
import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var email = ""           // Variaveis que serao observadas por fora, em outros arquivos
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func login() {
        errorMessage = ""
        
        guard !email.isEmpty, !password.isEmpty else {
            errorMessage = "Preencha todos os campos"
            return
        }
        
        guard !email.contains("@") && !email.contains(".") else {
            errorMessage = "Utilize um email válido"
            return
        }
    }
    
    func validate() {
        
    }
    
}
