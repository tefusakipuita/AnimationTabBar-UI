//
//  TabItem.swift
//  Animation TabBar
//
//  Created by 中筋淳朗 on 2020/11/14.
//

import SwiftUI
import SDWebImageSwiftUI

struct TabItemView: View {
    
    // MARK: - Property
    
    let tabItem: TabItem
    
    @Binding var selected: TabItem
    
    
    // MARK: - Body
    
    var body: some View {
        
        // 『SDWebImageSwiftUI』によって AnimatedImage が使えるように
        AnimatedImage(name: tabItem.gifName)
            .resizable()
            .scaledToFit()
            .frame(width: 40)
            .offset(y: selected == tabItem ? -16 : 0)
            .scaleEffect(selected == tabItem ? 2.2 : 1)
            .shadow(color: Color.black.opacity(0.3), radius: 8, x: 4, y: 6)
            // スクロール時のタブのアニメーション用
            .animation(.spring(response: 0.3, dampingFraction: 0.6))
            // タブのタップ時
            .onTapGesture(perform: {
                withAnimation(
                    .spring(response: 0.3, dampingFraction: 0.6)
                ) {
                    selected = tabItem
                }
            })
    }
}

// MARK: - Preview

struct TabItem_Previews: PreviewProvider {
//    static var tabItem: TabItem = .dog1
//
//    @State static var selected: TabItem = .dog1
    
    static var previews: some View {
//        TabItemView(tabItem: tabItem, selected: $selected)
//            .previewLayout(.sizeThatFits)
//            .padding()
        
        ContentView()
    }
}
