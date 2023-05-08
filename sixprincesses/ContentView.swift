//
//  ContentView.swift
//  sixprincesses
//
//  Created by 신상용 on 2023/05/08.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewController: ViewController = ViewController()
    @StateObject var userInformation: UserInformation = UserInformation()
    @StateObject var questiondata: QuestionData = QuestionData()
    
    var body: some View {
        VStack(spacing: 0) {
            View_3(userInformation: userInformation, viewController: viewController)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
