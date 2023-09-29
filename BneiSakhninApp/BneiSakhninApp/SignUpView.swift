import SwiftUI
import FirebaseAuth // Import FirebaseAuth

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var registrationSuccessful = false
    // Add a state variable to track registration success
    @Environment(\.dismiss) var dismiss


    var body: some View {
        VStack {
            Image("Sakhnin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .clipped()
                .padding(.bottom,23)
            Text("Sign Up")
                .fontWeight(.heavy)
            InputView(text: $email,
                      title: "Email Address",
                      placeholder: "name@example.com")
                .autocapitalization(.none)
            InputView(text: $fullname,
                      title: "Full Name",
                      placeholder: "Mark Jones")
                .autocapitalization(.none)
            InputView(text: $password,
                      title: "Password",
                      placeholder: "Enter your password",
                      isSecureField: true)
            Button(action: signUp) {
                HStack(spacing:5){
                    Text("Sign Up")
                    Image(systemName: "arrow.right")
                }
                .frame(width: UIScreen.main.bounds.width - 32,
            height: 48)
                .foregroundColor(.white)
                .background(Color("RedSakh"))
                .cornerRadius(10)
                .padding(.top,25)
            }
            Spacer()
                HStack(spacing:2){
                    Text("Already Have an account?")
                        .foregroundColor(Color(.black))
                    Button {
                        dismiss()
                    }
                label:
                    {
                        Text("Sign In")
                            .navigationBarBackButtonHidden(true)
                            .fontWeight(.bold)
                            .foregroundColor(Color("RedSakh"))
                    }
                    
                }
        }
    }

    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Error registering user: \(error.localizedDescription)")
            } else {
                print("User registered successfully")
                registrationSuccessful = true // Activate the NavigationLink to navigate to MainView
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
