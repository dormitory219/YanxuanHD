//
//  SidebarMenu.swift
//  YanxuanHD
//
//  Created by liang on 2019/6/19.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI

struct SidebarMenu : View {
    var smaller: Bool
    var model: SidebarMenuItem
    var activeData: ActiveTabData
    var isSelected: Bool

    let golden = Color.init(red: 1, green: 1, blue: 1, opacity: 0.25)
    var body: some View {
        VStack {
            Image(model.imageName)
                .scaleEffect(self.smaller ? 1 / 2.0 : 1 / 3.0, anchor: .center)
                .padding(self.smaller ? -20: -24)
            
            self.titleView(self.smaller ? 5: 4)
            }.frame(minWidth: 0, maxWidth: .infinity)
            .background(self.isSelected ? golden: Color.clear)
            .onTapGesture {
                self.activeData.activeMenuItem = self.model
                print("sSelect \(self.activeData.activeMenuItem)")
        }
    }
    
    func titleView(_ offset: Int) -> some View {
        let top = -2 * offset
        
        return Text(self.model.title)
            .font(Font.subheadline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: CGFloat(top), leading: 0, bottom: CGFloat(2 * offset), trailing: 0))
    }

}

#if DEBUG
struct SidebarMenu_Previews : PreviewProvider {
    static let item = SidebarMenuItem(id: 9862, title: "搜索", imageName: "sidebar-search", isSpacer: false, childViewName: "", url: "")
    static var previews: some View {
        SidebarMenu(smaller: false, model: item, activeData: ActiveTabData(), isSelected: true)
    }
}
#endif
