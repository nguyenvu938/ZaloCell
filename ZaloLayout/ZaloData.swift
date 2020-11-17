//
//  ZaloData.swift
//  ZaloLayout
//
//  Created by NguyenVu on 15/11/2020.
//

import Foundation
class ZaloData {
    var imageName: String
    var name: String
    var time: String
    var description: String
    
    init(imageName: String, name: String, time: String, description: String) {
        self.imageName = imageName
        self.name = name
        self.time = time
        self.description = description
    }
}

func dataZalo() -> [ZaloData] {
    var arrays = [ZaloData]()
    let data1 = ZaloData(imageName: "1", name: "Nguyen Vu", time: "3 giờ", description: "ok mai nhé")
    let data2 = ZaloData(imageName: "2", name: "Đức Anh", time: "5 giờ", description: "có gì alo")
    let data3 = ZaloData(imageName: "3", name: "Viet Linh", time: "10 giờ", description: "k có j")
    let data4 = ZaloData(imageName: "4", name: "Hải Lâm", time: "20 giờ", description: "chắc vậy")
    let data5 = ZaloData(imageName: "5", name: "Trung Dung", time: "13/11", description: "phải xem mới chốt đc")
    let data6 = ZaloData(imageName: "6", name: "An Bui", time: "10/11", description: "ok")
    let data7 = ZaloData(imageName: "7", name: "BĐS Hà Nội", time: "9/11", description: "lô này chưa có ai đặt đâu")
    let data8 = ZaloData(imageName: "8", name: "Thu Hằng", time: "5/11", description: "k đc r")
    let data9 = ZaloData(imageName: "9", name: "Trần Hiếu", time: "3/11", description: "cho mày đấy")
    let data10 = ZaloData(imageName: "10", name: "Phan Nam", time: "28/10", description: "thôi")
    arrays.append(contentsOf: [data1, data2, data3, data4, data5, data6, data7, data8, data9, data10])
    return arrays
}
