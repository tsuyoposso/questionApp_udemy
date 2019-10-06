//
//  SoundFile.swift
//  questionApp
//
//  Created by 長坂豪士 on 2019/10/05.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import Foundation
import AVFoundation

class SoundFile {
    
    var player:AVAudioPlayer?
    
    func playSound(fileName:String, extensionName:String) {
        
        // 再生する
        // Bundle -> 左のエリアのこと
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        // doの中身を実行して、もしエラーが起きればcatchの中身を実行する
        do {
            
            // 効果音を鳴らす
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
            
        } catch {
            
            print("エラーです！")
        }
        
    }
    
    
}
