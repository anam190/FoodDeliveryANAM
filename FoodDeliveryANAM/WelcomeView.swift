//
//  WelcomeView.swift
//  FoodDeliveryANAM
//
//  Created by students on 21/01/2025.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image("app_logo")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .padding(.top,350)
                Text("Welcome\nto our store")
                    .font(.customfont(.semibold,fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top,20)
                Text("Get your groceries fast")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                
                
                
                NavigationLink{
                    SignInView()
                }label: {
                    Text("Get started")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: 350,minHeight: 60, maxHeight: 60)
                .background(Color.primaryApp)
                .cornerRadius(20)
                .padding(.top,40)
                
                
                
                
            }
        }
    }
}
#Preview {
    NavigationStack{
        WelcomeView()
    }
    
}
