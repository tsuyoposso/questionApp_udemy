//
//  ChangeColor.swift
//  questionApp
//
//  Created by 長坂豪士 on 2019/10/07.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import Foundation
import UIKit

class ChangeColor {
    
    func changeColor(topR:CGFloat, topG:CGFloat, topB:CGFloat, topAlpha:CGFloat, bottomR:CGFloat, bottomG:CGFloat, bottomB:CGFloat, bottomAlpha:CGFloat) -> CAGradientLayer {
        
        // グラデーションの開始色
        let topColor = UIColor(red: topR, green: topG, blue: topB, alpha: topAlpha)
        
        // グラデーションの終了色
        let bottomColor = UIColor(red: bottomR, green: bottomG, blue: bottomB, alpha: bottomAlpha)
        
        // グラデーションの色を配列で管理
        let gradientColor = [topColor.cgColor, bottomColor.cgColor]
        
        // CAGradientLayerを返すために値を定義して初期化
        let gradientLayer = CAGradientLayer()
        // gradientLayerの色に配列を代入する
        gradientLayer.colors = gradientColor
        
        return gradientLayer
    }
    
}
