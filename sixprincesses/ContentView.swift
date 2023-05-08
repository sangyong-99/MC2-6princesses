//
//  ContentView.swift
//  sixprincesses
//
//  Created by 신상용 on 2023/05/08.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var userInformation : UserInformation = UserInformation()
    @StateObject var viewController : ViewController = ViewController()
    
    var body: some View {
        VStack {
            
            switch (viewController.currentPage) {
            case 1 : View_1(userInformation: userInformation, viewController : viewController)
            case 2 : View_3(userInformation: userInformation, viewController : viewController)
            default:
                Text("error")
            }
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
