
import FirebaseAuth
import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.indigo)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .padding()
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Nome: ")
                                .bold()
                            Text(user.name)
                        }
                        .padding()
                        HStack {
                            Text("Email: ")
                                .bold()
                            Text(user.email)
                        }
                        .padding()
                        HStack {
                            Text("Nome: ")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                        }
                        .padding()
                    }
                    Button {
                        viewModel.userLogOut()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.red.opacity(0.7))
                                .frame(height: 50)
                            Text("Sair")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                    .padding(.horizontal, 50)
                } else {
                    Text("Carregando Perfil...")
                }
            }
            .navigationTitle("Perfil")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

#Preview {
    ProfileView()
}
