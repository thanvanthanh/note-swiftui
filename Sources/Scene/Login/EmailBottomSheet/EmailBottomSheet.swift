//
//  EmailBottomSheet.swift
//  ios-noteapp
//
//  Created by Quang Nguyễn Như on 05/06/2023.
//

import SwiftUI

struct EmailBottomSheet: View {
    
    var body: some View {
        ZStack {
            Color.background
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                Text("Choose account")
                    .foregroundColor(Color.mainText)
                    .font(.system(size: 18, weight: .bold))
                    .padding(.bottom, 32)
                
                PickEmailItem()
                
                PickEmailItem()
                .padding(.bottom, 24)
            }
        }
    }
    
}

struct PickEmailItem: View {
    
    var body: some View {
        HStack(spacing: 16) {
            Image("Screen.Login.img.Avatar")
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            VStack(spacing: 4) {
                Text("Syahrul Fuadi")
                    .foregroundColor(Color.mainText)
                    .font(.system(size: 14, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("syahrulfmuhammadgmail.com")
                    .foregroundColor(Color.mainText)
                    .font(.system(size: 12, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)

            }
            Spacer()
        }
        .padding(.horizontal, 32)
        .padding(.bottom, 24)
    }
}

#if ENDPOINT_DEBUG
struct EmailBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        EmailBottomSheet()
    }
}
#endif
