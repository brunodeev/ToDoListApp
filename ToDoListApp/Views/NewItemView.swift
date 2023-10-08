
import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    
    var body: some View {
        VStack {
            Text("Novo Item")
                .font(.system(size: 32))
                .bold()
            Form {
                TextField("Título", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                DatePicker("Limite", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                Button {
                    viewModel.save()
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
        }
    }
}

#Preview {
    NewItemView()
}
