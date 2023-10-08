
import FirebaseAuth
import SwiftUI

struct ToDoListView: View {
    
    let currentUser = Auth.auth().currentUser?.email
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("ToDo's")
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView()
}
