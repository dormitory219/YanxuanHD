//
//  OverseaSection.swift
//  YanxuanHD
//
//  Created by liang on 2019/6/29.
//  Copyright © 2019 liang. All rights reserved.
//

import SwiftUI

struct OverseaSection : View {
    
    @EnvironmentObject var userData: OverseaData
    
    var body: some View {
        VStack {
            SectionHeader(title:"品牌制造商", desc: "工厂直达消费者，剔除品牌溢价", more: "更多制造商", detailURL: "https://you.163.com/manufacturer/list?_stat_area=manufacturer_link&_stat_referer=yanxuanhd")
            
            if self.userData.list.count == 4 {
                
                ScrollView() {
                    
                    HStack {
                        OverseaProductShow(product: self.userData.list[0], offsetX: 0, offsetY: -60)
                        OverseaProductShow(product: self.userData.list[1], offsetX: 0, offsetY: -60)
                        VStack {
                            OverseaProductShow(product: self.userData.list[2], offsetX: -70, offsetY: 0, zoom: 0.6)
                            OverseaProductShow(product: self.userData.list[3], offsetX: -70, offsetY: 0, zoom: 0.6)
                        }
                    }
                }.frame(height: 320)
            }
        }
    }
}

#if DEBUG
struct OverseaSection_Previews : PreviewProvider {
    static var previews: some View {
        OverseaSection().environmentObject(OverseaData())
    }
}
#endif
