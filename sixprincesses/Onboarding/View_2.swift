//
//  View_2.swift
//  sixprincesses
//
//  Created by 신서연 on 2023/05/08.
//  Created by jaelyung kim on 2023/05/08.
//

import SwiftUI

struct View_2: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    
    @State private var date = Date()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
                .frame(height:158)
            //Title
            Text("은퇴일을 선택하세요")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            Spacer()
                .frame(height:20)
            
            //Description
            Text("은퇴 100일 이내에 사용을 권장해요")
                .font(.system(size: 16))
                .foregroundColor(Color(hex: 0x48484A))
            Spacer()
            
            //Calendar
            DatePicker("date", selection: $date, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(width: 330)
                .accentColor(Color(hex: 0x139460))
                .environment(\.locale, Locale.init(identifier: "ko"))
            Spacer()
            
            //NextButton
            NextButtonView(viewCount: 2)
            //Page Controls
            Spacer()
                .frame(height:52)
            
        }
        .ignoresSafeArea()
    }
}

struct View_2_Previews: PreviewProvider {
    static var previews: some View {
        View_2()
    }
}
