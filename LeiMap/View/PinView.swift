//
//  PinView.swift
//  LeiMap
//
//  Created by ngom arona on 23/02/2023.
//

import SwiftUI

struct PinView: View {
    var title: String
    @State var clicked = false
    @State private var action: Int? = 0
    
    var body: some View {
        if !clicked {
            return AnyView(
                Button(action: {
                    clicked = true
                }) {
                    Image(systemName: "paperplane")
                        .font(.system(size: 20.0))
                        .foregroundColor(.red)
                }
            )
        } else {
            return AnyView (
                VStack {
                    NavigationLink(destination: MapListView(lieu: title), tag: 1, selection: $action) {
                        EmptyView()
                    }
                    Text(title)
                        .frame(width: 140, height: 40)
                        .padding()
                        .font(.system(size: 20.0))
                        .background(Color.white)
                        .border(Color.red, width: 2)
                        .onTapGesture {
                            self.action = 1
                        }
                }
            )
        }
    }
}

//
//struct PinView_Previews: PreviewProvider {
//    static var previews: some View {
//        PinView()
//    }
//}

