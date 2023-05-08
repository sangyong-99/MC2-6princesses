//
//  NextButtonView.swift
//  sixprincesses
//
//  Created by Yeonwoo Lee on 2023/05/08.
//

import SwiftUI

struct NextButtonView: View {
    
    @State var viewCount : Int?
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                
                HStack{
                    Spacer()
                    Text("다  음")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                //                .padding(16)
                .frame(height: 44)
                .background(Color(hex: 0x139460, opacity: 1))
                .cornerRadius(22)
                .padding(.horizontal, 30)
                .padding(.bottom, 23)
                
                HStack {
                    Circle()
                        .foregroundColor(viewCount == 1 ? Color(hex: 0x139460) : Color.gray)
                        .frame(width: 8)
                    
                    Circle()
                        .foregroundColor(viewCount == 2 ? Color(hex: 0x139460) : Color.gray)
                        .frame(width: 8)
                    
                    Circle()
                        .foregroundColor(viewCount == 3 ? Color(hex: 0x139460) : Color.gray)
                        .frame(width: 8)
                    
                    Circle()
                        .foregroundColor(viewCount == 4 ? Color(hex: 0x139460) : Color.gray)
                        .frame(width: 8)
                    
                }
                
                
            }
        }
        
    }
}

struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView()
    }
}
