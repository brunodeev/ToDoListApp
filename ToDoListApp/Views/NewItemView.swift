
import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("Novo Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 80)
            Form {
                TextField("Título", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                DatePicker("Limite", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                Button {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.indigo)
                            .frame(height: 50)
                        Text("Salvar")
                            .foregroundStyle(.white)
                            .bold()
                    }
                }
            }
            .alert(isPresented: $viewModel.showAlert, content: {
                Alert(
                    title: Text("Error"),
                    message: Text("Preencha todos os campos")
                )
            })
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
