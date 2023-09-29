//
//  ContentView.swift
//  LogInDB
//
//  Created by Bader Shalata on 9/27/23.
//

import SwiftUI
struct SignInView: View
{
    @State private var email = ""
    @State private var password = ""
    
    var body: some View
    {
        NavigationStack
        {
            VStack
            {
                Image("Sakhnin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipped()
                    .padding(.bottom,23)
                Text("Sign In")
                    .fontWeight(.heavy)
                VStack(spacing:24)
                {
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                        .autocapitalization(.none)
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                }
            }
            NavigationLink
            {
                MainView()
                    .navigationBarBackButtonHidden(true)
            }
            label:
            {
                HStack(spacing:24)
                {
                    Text("Sign In")
                    Image(systemName: "arrow.right")
                }
                .frame(width: UIScreen.main.bounds.width - 32,height: 48)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .background(Color("RedSakh"))
                .cornerRadius(10)
                .padding(.top,25)
            }
            HStack(spacing:2)
            {
                Text("Forgot password?")
                .foregroundColor(Color("RedSakh"))
            }
            
            Spacer()
            HStack(spacing:2){
                Text("Don't have an account?")
                    .foregroundColor(Color(.black))
                    .padding(1)
            NavigationLink
                {
                    SignUpView()
                }
            label:
            {
                    Text("Sign Up!")
                        .fontWeight(.bold)
                        .foregroundColor(Color("RedSakh"))
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

//NavigationLink{
//    RegisterView()
//        .navigationBarBackButtonHidden(true)
//}label: {
//    HStack(spacing:3){
//        Text("Don't have an account?")
//            .foregroundColor(Color(.darkGray))
//            .fontWeight(.semibold)
//        Text("Sign up")
//            .fontWeight(.bold)
//            .foregroundColor(Color("RedSakh"))
//    }
