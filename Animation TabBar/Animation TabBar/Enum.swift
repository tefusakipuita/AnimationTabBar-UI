//
//  Enum.swift
//  Animation TabBar
//
//  Created by 中筋淳朗 on 2020/11/14.
//

import Foundation


enum TabItem: String, CaseIterable {
    
    case dog1
    case dog2
    case dog3
    case dog4
    
    var gifName: String {
        "\(self.rawValue).gif"
    }
}
