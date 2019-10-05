//
//  ViewController.swift
//  questionApp
//
//  Created by 長坂豪士 on 2019/10/05.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NowScoreDelegate {


    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    // modalで遷移した先に渡す必要がある変数
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImagesList()
    
    // IBActionnで検知した回答がどちらなのか取得する変数
    var pickedAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        imageView.image = UIImage(named: imagesList.list[0].imageText)
        
        if UserDefaults.standard.object(forKey: "deforeCount") != nil {
            
            maxScore = UserDefaults.standard.object(forKey: "beforeCount") as! Int
            
        } else {
        }
        
        maxScoreLabel.text = String(maxScore)
        
    }
    

    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            
            pickedAnswer = true
            
            // 丸ボタンが押された時
            
            // ユーザーが押したボタンが丸ボタンだった
            
            // 丸ボタンの音声を流す
        } else if (sender as AnyObject).tag == 2 {
            
            pickedAnswer = false
            
            // Xボタンが押された時
            
            // ユーザーが押したボタンがXボタンだった
            
            // Xボタンの音声を流す
            
        }
        
        // チェック
        // 回答があっているか(pickedAnswerとImagesListのcorrectOrNotの値が一致しているか)
        check()
        nextQuestion()
        
    }
    
    
    func check() {
        
        let correctAnswer = imagesList.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            print("正解")
            correctCount += 1
        } else {
            
            print("間違い")
            wrongCount += 1
        }
    }
    
    func nextQuestion() {
        
        if questionNumber <= 9 {
            
            questionNumber += 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText)
            
        } else {
            
            print("問題終了")
            
            // 画面遷移する
            performSegue(withIdentifier: "next", sender: nil)
            
        }
        
    }
    
    
    func nowScore(score: Int) {
        maxScoreLabel.text = String(score)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next" {
            
            let nextVC = segue.destination as! NextViewController
            
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
            // NextViewControllerのdelegateをここで実行するよって意味
            nextVC.delegate = self
        }
    }
    
    
}

