//
//  LoginPage.swift
//  FoodDeliveryANAM
//
//  Created by students on 21/01/2025.
//

import SwiftUI

struct LoginPage: View {
    @State var email: String = ""
    @State var pass : String = ""
    var body: some View {
        ZStack{
            
            Image("bottom_bg")
                .resizable()
                .ignoresSafeArea()
            VStack{
                
                Image("color_logo")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .padding(.bottom,50)
                
                Text("Loging")
                    .padding(.trailing,250)
                    .padding(.bottom,10)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Enter your email and password")
                    .font(.caption)
                    .opacity(0.6)
                    .padding(.bottom,50)
                    .padding(.trailing,160)
                
                Text("Email")
                    .opacity(0.7)
                    .padding(.trailing,300)
                    .padding(.bottom,10)
                TextField("Enter Email", text: $email)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity)
                    .padding(.leading,26)
                
                Divider()
                    .frame(width: 350)
                    .padding(.bottom,10)
                
                Text("Password")
                    .opacity(0.7)
                    .padding(.trailing,280)
                    .padding(.bottom,10)
                
                SecureField("Enter Password", text: $pass)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity)
                    .padding(.leading,26)
                
                Divider()
                    .frame(width: 350)
                NavigationLink{
                    SignInView()
                    
                } label :{
                    Text("Forgot Password?")
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .padding(.leading,200)
                        .padding(.bottom,30)
                    
                }
                NavigationLink{
                    SignInView()
                }label: {
                    Text("Log In")
                        .frame(width: 350,height: 50)
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundColor(.white)
                        .background(Color.primaryApp)
                        .cornerRadius(20)
                        .padding(.bottom, 10)
                    
                    
                }
                HStack{
                    Text("Don't have an account?")
                    NavigationLink{
                        SignInView()
                    } label: {
                        Text("Sign Up")
                            .foregroundColor(.primaryApp)
                    }
                }.padding(.bottom,100)
                
                
                
                
            
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    }
        
    }
}

#Preview {
    NavigationStack{
        LoginPage()
    }
}
