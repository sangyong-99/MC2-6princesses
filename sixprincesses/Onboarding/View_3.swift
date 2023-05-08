//
//  View_3.swift
//  sixprincesses
//
//  Created by Yeonwoo Lee on 2023/05/08.
//

import SwiftUI

struct View_3: View {
    
    @State var productName = ""
    @StateObject var userInformation : UserInformation
    @StateObject var viewController : ViewController
    
    @State private var openPhoto = false
    @State private var image = UIImage()
    
    var body: some View {
        
        
        VStack{
            
            VStack(alignment: .leading, spacing: 0){
                
                Spacer()
                    .frame(height: 158)
                
                Text("받고싶은 은퇴 선물의 \n이미지와 선물을 작성하세요")
                    .font(.system(size: 30, weight: .semibold))
                    .padding(.bottom, 20)
                Text("상세하고 명확한 이미지를 권장해요.")
                
                Spacer()
                    .frame(height: 88)
                
                
                Button(action: {
                    self.openPhoto = true
                }) {
                    //                                            Image(uiImage: self.image)
                    //                                                                .resizable()
                    //                                                                .frame(minWidth: 0, maxWidth: .infinity)
                    ZStack {
                        Rectangle()
                            .fill(Color(hex: 0xF5F5F5, opacity: 1))
                            .frame(height: 220)
                            .cornerRadius(20)
                            .shadow(color: Color(hex: 0xD1D1D6, opacity: 1), radius: 1, x: 0, y: 2)
                        
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 32))
                            .foregroundColor(Color(hex: 0x139460, opacity: 1))
                        
                        Image(uiImage: self.image)
                            .resizable()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(width: 330, height: 220)
                            .cornerRadius(20)
                    }
                }
                .sheet(isPresented: $openPhoto) {
                    ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                }
                
                //                imagepicker
                Spacer()
                    .frame(height: 36)
                
                TextField("받고싶은 선물", text: $productName)
                    .font(.system(size: 18, weight: .none))
                    .padding(.bottom, 5.5)
                
                Divider()
                
                Spacer()
                
                
                
            }
            .ignoresSafeArea()
            .padding(.horizontal, 30)
            
            NextButtonView(viewCount: 2)
                .onTapGesture {
                    userInformation.productName = productName
                    viewController.currentPage += 1
                }
            
        }
    }
}

struct View_3_Previews: PreviewProvider {
    static var previews: some View {
        View_3(userInformation: UserInformation(), viewController: ViewController())
    }
}
