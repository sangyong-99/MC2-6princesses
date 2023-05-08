//
//  View_1.swift
//  sixprincesses
//
//  Created by Yeonwoo Lee on 2023/05/08.
//

import SwiftUI

struct View_1: View {
    
    @State var name = ""
    @StateObject var userInformation : UserInformation
    @StateObject var viewController : ViewController
    
    var body: some View {
        
        VStack{
            
            VStack(alignment: .leading, spacing: 0){
                
                Spacer()
                    .frame(height: 158)
                
                Text("이름을 입력하세요")
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.bottom, 36)
                
                TextField("이름", text: $name)
                    .font(.system(size: 18, weight: .none))
                    .padding(.bottom, 5.5)
                
                Divider()
                
                Spacer()
                
                
                
            }
            .ignoresSafeArea()
            .padding(.horizontal, 30)
            
            NextButtonView(viewCount: 1)
                .onTapGesture {
                    userInformation.name = name
                    viewController.currentPage += 1
                }
            
            
        }
    }
}

struct View_1_Previews: PreviewProvider {
    static var previews: some View {
        View_1(userInformation: UserInformation(), viewController: ViewController())
    }
}
