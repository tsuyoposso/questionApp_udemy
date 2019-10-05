//
//  imagesModel.swift
//  questionApp
//
//  Created by 長坂豪士 on 2019/10/05.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import Foundation

class ImagesModel {
    
    // 画像名を取得して、その画像が人間かそうでないかをフラグによって判定するための機能
    
    let imageText:String
    let answer:Bool
    
    init(imageName:String, correctOrNot:Bool) {
        
        imageText = imageName
        
        answer = correctOrNot
        
        
    }
    
}
