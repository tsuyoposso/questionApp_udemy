//
//  imagesList.swift
//  questionApp
//
//  Created by 長坂豪士 on 2019/10/05.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import Foundation

class ImagesList{
    
    // listはImagesModelクラスが入る
    var list = [ImagesModel]()
    
    init() {
        // initしたときにあらかじめ下記の情報が入る
        // 別の問題を作りたかったらここを差し替えればいい
        list.append(ImagesModel(imageName: "0", correctOrNot: true))
        list.append(ImagesModel(imageName: "1", correctOrNot: false))
        list.append(ImagesModel(imageName: "2", correctOrNot: false))
        list.append(ImagesModel(imageName: "3", correctOrNot: false))
        list.append(ImagesModel(imageName: "4", correctOrNot: true))
        list.append(ImagesModel(imageName: "5", correctOrNot: false))
        list.append(ImagesModel(imageName: "6", correctOrNot: true))
        list.append(ImagesModel(imageName: "7", correctOrNot: true))
        list.append(ImagesModel(imageName: "8", correctOrNot: false))
        list.append(ImagesModel(imageName: "9", correctOrNot: true))
        list.append(ImagesModel(imageName: "10", correctOrNot: true))
        
    }
    
    
    
    
    
}
