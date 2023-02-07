//
//  UserProfilView.swift
//  LeiMap
//
//  Created by ngom arona on 07/02/2023.
//

import SwiftUI

struct UserProfilView: View {
    @State private var username=""
    @State private var email=""
    @State private var bio=""
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
              TextField("Enter your username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            HStack {
              Image(systemName: "envelope").foregroundColor(.gray)
              TextField("Enter your email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            Spacer()
            

        }
        
    }
}
struct UserProfilView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfilView()
    }
}
