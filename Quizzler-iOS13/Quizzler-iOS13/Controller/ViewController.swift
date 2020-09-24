//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by while on 12/07/2019.
//  Copyright © 2019 while. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choiceButtone1: UIButton!
    @IBOutlet weak var choiceButtone2: UIButton!
    @IBOutlet weak var choiceButtone3: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       updateView()
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector (updateView), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateView(){
       
        
        questionText.text = quizBrain.getQuestionText()
        choiceButtone1.setTitle(quizBrain.getAnswerButtonLabel(button: 0), for: .normal)
        choiceButtone2.setTitle(quizBrain.getAnswerButtonLabel(button: 1), for: .normal)
        choiceButtone3.setTitle(quizBrain.getAnswerButtonLabel(button: 2), for: .normal)
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        choiceButtone1.backgroundColor = UIColor.clear
        choiceButtone2.backgroundColor = UIColor.clear
        choiceButtone3.backgroundColor = UIColor.clear
        
        
    }
}


