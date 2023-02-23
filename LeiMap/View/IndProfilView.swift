//
//  IndProfilView.swift
//  LeiMap
//
//  Created by ngom arona on 30/01/2023.
//


import SwiftUI

struct IndProfilView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject var viewModel = LeiMapViewModel()
    let user : User
    
//    @State private var username=""
//    @State private var email="arona.ngom07@gmail.com"
//    @State private var bio=""
    @State private var biographie="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
//    let user: User

    var body: some View {
        
        VStack{
            ZStack(){
                Image("photo")
                    .resizable()
                    .frame(height: 250)
                    .edgesIgnoringSafeArea(.top)
                Image("meg")
                    .resizable()
                    .offset(y: 0).padding(.bottom, -10)
                    .frame(width: 180, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .shadow(radius: 10)

            }
            HStack {
              Image(systemName: "person").foregroundColor(.gray)
                Text(user.nom)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            HStack {
              Image(systemName: "envelope").foregroundColor(.gray)
                Text(user.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            Text(biographie)
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
                .border(.black)


            Spacer()
            

//        }
//        VStack {
//          switch viewModel.state {
////            switch viewModel.state2 {
//                case .success(let users):
//                    ForEach(users, id: \.self) { user in
//                        Text(user.id)
//                        Text(user.nom)
//                        Text(user.email)
//                        Text(user.password)
//                        Text(user.in_lieu)
//                        Text(user.id_lieu)
//                        Divider()
//                    }
//            case .success(let lieus):
//                //
//                ForEach(lieus, id: \.self) { lieu in
//                    Text(lieu.id)
//                    Text(lieu.nom)
//                    Text(lieu.adresse)
//                    Text(lieu.longitude)
//                    Text(lieu.latitude)
//                    Divider()
//                }
//                case .loading:
//                    ProgressView()
//                case .failed:
//                    Text("failed")
//            default:
//                EmptyView()
//
//            }
//        }
//        .task {
////            await viewModel.getLieu()
//            await viewModel.getParticipants()
//        }
//    }

        }
    }
}
struct IndProfilView_Previews: PreviewProvider {
    static var previews: some View {
        IndProfilView(user: User.mockData[0])
            .environmentObject(LeiMapViewModel())
    }
}
