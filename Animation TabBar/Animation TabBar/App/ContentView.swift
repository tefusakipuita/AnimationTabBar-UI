//
//  ContentView.swift
//  Animation TabBar
//
//  Created by 中筋淳朗 on 2020/11/14.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Property
    
    @State var selected: TabItem = .dog1
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), center: .center, startRadius: 5, endRadius: 500)
                .ignoresSafeArea()
            
            // MARK: - Main View
            // 引数の selection でタブの切り替えを検知する
            // selection と selected が一致したら該当の画面に切り替わる
            TabView (selection: $selected) {
                // 『.tabItem』ではなく『.tag』を使う
                FirstView()
                    .tag(TabItem.dog1)
                SecondView()
                    .tag(TabItem.dog2)
                ThirdView()
                    .tag(TabItem.dog3)
                ForthView()
                    .tag(TabItem.dog4)
            } //: TabView
            // 『indexDisplayMode: .never』にすることで、下のpageControlを非表示にできる
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            // MARK: - Tab Bar
            VStack {
                Spacer()

                HStack (spacing: 38) {
                    ForEach(TabItem.allCases, id: \.self) { tab in
                        TabItemView(tabItem: tab, selected: $selected)
                    } //: ForEach
                } //: HStack
                .padding(.vertical, 30)
                .padding(.horizontal, 45)
                .background(
                    Color.white
                        .clipShape(Capsule())
                        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 4, y: 4)
                )
            } //: VStack
            
        } //: ZStack
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
