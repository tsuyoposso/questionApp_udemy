//
//  nextViewController.swift
//  questionApp
//
//  Created by 長坂豪士 on 2019/10/05.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import UIKit

protocol NowScoreDelegate {
    
    func nowScore(score:Int)
}


class NextViewController: UIViewController {

    
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var wrongLabel: UILabel!
    
    var delegate:NowScoreDelegate?
    
    var correctedCount = Int()
    var wrongCount = Int()
    
    //最高値を更新するためにUserDefaultsで保存する値
    var beforeCount = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
        
        if UserDefaults.standard.object(forKey: "deforeCount") != nil {
            
            beforeCount = UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }
        
    }
    

    @IBAction func back(_ sender: Any) {
        
        // もし最高得点であれば、入れ替え
        if beforeCount < correctedCount {
            
            UserDefaults.standard.set(correctedCount, forKey:   "beforeCount")
            delegate?.nowScore(score: correctedCount)
            
        } else if beforeCount > correctedCount {
            
            UserDefaults.standard.set(beforeCount, forKey: "beforeCount")
            
        }
        
        
        dismiss(animated: true, completion: nil)
    }
    

}
