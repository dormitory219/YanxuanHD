//
//  ActiveTabData.swift
//  YanxuanHD
//
//  Created by liang on 2019/6/27.
//  Copyright © 2019 liang. All rights reserved.
//


import Combine
import SwiftUI

final class ActiveTabData: BindableObject {
    
    let willChange = PassthroughSubject<ActiveTabData, Never>()
    
    var activeMenuItem = sidebarMenuItems[0] {
        didSet {
            willChange.send(self)
        }
    }
}
