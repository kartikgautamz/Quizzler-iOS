//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Kartik Gautam on 08/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBarPressed: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
     
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! //true, false
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
           
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI()
    {
        questionLabel.text = quizBrain.getQuestionText()
        progressBarPressed.progress = quizBrain.getProgress()
        scoreLable.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
     
    }
    
}

