//
//  LoginView.swift
//  NoteApp
//
//  Created by Thân Văn Thanh on 02/06/2023.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image("Screen.Login.Background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            .background(Color.background)
            .ignoresSafeArea()
            
            VStack(spacing: 16) {
                Spacer()
                Button {
                    print("Login with Google")
                } label: {
                    HStack {
                        Image("Screen.Login.Ico.Google")
                        Text("Login with Google")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 50)
                .background(Color.mainRed)
                .cornerRadius(25)
                
                Button {
                    viewModel.showingCredits = !viewModel.showingCredits
                } label: {
                    HStack {
                        Image("Screen.Login.Ico.Apple")
                        Text("Login with Apple")
                            .font(.headline)
                            .foregroundColor(Color.background)
                    }
                }
                .sheet(isPresented: $viewModel.showingCredits) {
                    if #available(iOS 16.4, *) {
                        EmailBottomSheet()
                            .presentationDetents([.height(256)])
                            .presentationCornerRadius(32)
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 50)
                .background(Color.mainText)
                .cornerRadius(25)
                .padding(.bottom, 16)
                Text("or Login with email")
                    .underline()
                    .font(.body)
                    .foregroundColor(Color.mainText)
                .padding(.bottom, 16)
            }.padding(.horizontal, 24)
        }
    }
}

//struct MyDetent: CustomPresentationDetent {
//    static func height(in context: Context) -> CGFloat? {
//        return max(265, context.maxDetentValue * 0.1)
//    }
//}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: .init())
    }
}
