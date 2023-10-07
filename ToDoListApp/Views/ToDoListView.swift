
import FirebaseAuth
import SwiftUI

struct ToDoListView: View {
    
    let currentUser = Auth.auth().currentUser?.email
    
    var body: some View {
        VStack {
            Text("Bem vindo a sua conta")
            Text(currentUser!)
        }
    }
}

#Preview {
    ToDoListView()
}
