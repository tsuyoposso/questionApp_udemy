//
//  WithoutMP3.swift
//  questionApp
//
//  Created by 長坂豪士 on 2019/10/07.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import Foundation


class WithoutMP3:SoundFile {
    override func playSound(fileName: String, extensionName: String) {
        
        if extensionName == "mp3" {
            print("このファイルは再生できませんごめん")
        }
        
        player?.stop()
    }
    
    
    
}
