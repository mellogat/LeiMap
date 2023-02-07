//
//  IndProfilView.swift
//  LeiMap
//
//  Created by ngom arona on 30/01/2023.
//


import SwiftUI

struct IndProfilView: View {
    @State private var username=""
    @State private var email="arona.ngom@gmail.com"
    @State private var bio=""
    @State private var biographie="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
    let user: User

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
                Text(user.name)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            HStack {
              Image(systemName: "envelope").foregroundColor(.gray)
                Text(email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
            Text(biographie)

            Spacer()
            

        }
        
    }
}
struct IndProfilView_Previews: PreviewProvider {
    static var previews: some View {
        IndProfilView(user: User.mockData[0])
            .previewLayout(.sizeThatFits)
    }
}
