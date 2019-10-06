//
//  Human.swift
//  questionApp
//
//  Created by 長坂豪士 on 2019/10/06.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import Foundation


class Human:Animal {
    
    override func breath() {
        super.breath()
        profile()
    }
    
    func profile() {
        
        print("私はTnagaです")
    }
}
