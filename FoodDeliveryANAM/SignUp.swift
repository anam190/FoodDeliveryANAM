//
//  SignUp.swift
//  FoodDeliveryANAM
//
//  Created by students on 22/01/2025.
//

import SwiftUI

struct SignUp: View {
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
                    .frame(width: 50,height: 60)
                    .padding(.bottom,80)
                
                Text("sign up")
                    .font(.title)
                    .padding(.trailing,270)
                    .padding(.bottom,10)
                
                Text("enter your credentials to continue")
                    .padding(.trailing,100)
                    .padding(.bottom,10)
                
                Text("Username")
                    .opacity(0.7)
                    .padding(.trailing,285)
                    .padding(.bottom,10)
                
                TextField("Enter Username", text: $email)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity)
                    .padding(.leading,10)
                
                
                Divider()
                    .frame(width: 350)
                
                Text("Email")
                    .opacity(0.7)
                    .padding(.trailing,320)
                
                TextField("Enter Email", text: $email)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity)
                    .padding(.leading,10)
                
                Divider()
                    .frame(width: 355)
                    .padding(.bottom,5)
                
                Text("Password")
                    .opacity(0.7)
                    .padding(.trailing,288)
                
                
                TextField("Enter Password", text: $pass)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity)
                    .padding(.leading,10)
                
                Divider()
                    .frame(width: 355)
                    .padding(.bottom,5)
            }
            NavigationLink{
                SignInView()
            }label: {
                Text("Sign Up")
                    .frame(width: 350,height: 50)
                    .font(.customfont(.semibold, fontSize: 20))
                    .foregroundColor(.white)
                    .background(Color.primaryApp)
                    .cornerRadius(20)
                    .padding(.top,770)
            }
            HStack{
                
                Text("By continuing you agree to our")
                NavigationLink{
                    SignInView()
                } label: {
                    Text("terms of service \n and privacy policy")
                        .foregroundColor(.primaryApp)
                }
            }.padding(.bottom,200)
                .padding(.top,800)
        }
            HStack{
   
            Text("Already have an account?")
            NavigationLink{
                SignInView()
            } label: {
                Text("Sign Up")
                    .foregroundColor(.primaryApp)
            }
        }.padding(.bottom,150)
            
            
            
            
        }
        }
    

    

#Preview {
    NavigationStack{
        SignUp()
    }
}
