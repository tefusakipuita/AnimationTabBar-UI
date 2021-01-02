//
//  FirstView.swift
//  Animation TabBar
//
//  Created by 中筋淳朗 on 2020/11/14.
//

import SwiftUI

struct FirstView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        Text("First")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}

// MARK: - Preview

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
