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
    @State private var biographie="Écrivez votre bio"
    @State var savedInfos: Bool = false
    @Environment(\.presentationMode) var presentationMode


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
            Form{
                HStack {
                  Image(systemName: "person").foregroundColor(.gray)
                  TextField("Enter your username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding()
                HStack {
                  Image(systemName: "envelope").foregroundColor(.gray)
                  TextField("Enter your email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding()
            }
            TextEditor(text: $biographie)
                            .foregroundColor(.black) // Text color
                            .background(Color.blue)
            
            Button(action: {
                savedInfos = true
                LocalStorage.myValueU = self.username
                LocalStorage.myValueE = self.email
                LocalStorage.myValueB = self.biographie
                presentationMode.wrappedValue.dismiss()
                presentationMode.wrappedValue.dismiss()


                }, label: {
                    Text("Update")
                })
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth:150)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                    .disabled(username.isEmpty||email.isEmpty)
                    .alert("✅ Info successfully updated",
                            isPresented: $savedInfos) {
                    }
            Spacer()
           

        }
        .onAppear(perform: {
                        self.username = LocalStorage.myValueU
                        self.email = LocalStorage.myValueE
                        self.biographie = LocalStorage.myValueB


                    })
       
        
    }
}
struct UserProfilView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfilView()
    }
}
