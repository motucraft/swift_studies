//
//  ContentView.swift
//  Janken
//
//  Created by 大﨑基樹 on 2024/11/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            Image(.gu)
                .resizable()
                .scaledToFit()
            Text("グー")
            Button {
                print("タップされたよ！")
            } label: {
                Text("じゃんけんをする！")
            }

        }

    }
}

#Preview {
    ContentView()
}
