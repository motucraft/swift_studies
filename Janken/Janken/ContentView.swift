//
//  ContentView.swift
//  Janken
//
//  Created by 大﨑基樹 on 2024/11/10.
//

import SwiftUI

struct ContentView: View {
    @State var jankenNumber = 0
    var body: some View {

        VStack {
            Spacer()
            if jankenNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if jankenNumber == 2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)

            }

            Button {
                var newJankenNumber = 0
                repeat {
                    newJankenNumber = Int.random(in: 1...3)
                } while jankenNumber == newJankenNumber
                
                jankenNumber = newJankenNumber
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundStyle(.white)
            }

        }

    }
}

#Preview {
    ContentView()
}
