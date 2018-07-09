//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText

    }

    
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        nextQuestion()
    
    }
    
    
    func updateUI() {
        
    }
    
    
    func nextQuestion() {
        
        if questionNumber <= 12 {
           questionLabel.text = allQuestions.list[questionNumber].questionText
        } else {
            startOver()
            print("End of quiz")
        }
        
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            print("Correct")
        } else {
            print("Wrong")
        }
        
    }
    
    
    func startOver() {
        
//        var answer : Int = 0
//        let alert = UIAlertController(title: "End of Quiz", message: "Do you want to start over?", preferredStyle: UIAlertControllerStyle.alert)
//        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
//                NSLog("Quiz will start over")
//                answer = 1
//        }))
//
//        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
//            NSLog("User quits")
//            answer = 0
//        }))
//
////        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
////        action in switch action.style{
////            case .default:
////                print("Start Over")
////
////                self.questionNumber = 0
////                let self.firstQuestion = allQuestions.list[0]
////                self.questionLabel.text = firstQuestion.questionText
////
////            case .cancel:
////                print("cancel")
////
////            case .destructive:
////                print("destructive")
////            }
////        }))
////        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {
////            action in switch action.style{
////            case .default:
////            print("cancel")
////
////            case .cancel:
////            print("cancel")
////
////            case .destructive:
////            print("destructive")
////            }
////        }))
//
//        self.present(alert, animated: true, completion: nil)
//
//        if answer == 1 {
//            questionNumber = 0
//            let firstQuestion = allQuestions.list[0]
//            questionLabel.text = firstQuestion.questionText
//        } else {
//            print("what next")
//        }
    }

}
