//
//  ViewController.swift
//  QuizApp
//
//  Created by Apple on 8/14/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = ["The U.S. produces how much waste a year?",
                     "About how many lanfills are in the world?",
                     "Around how many sea animals are killed by pollution yearly?",
                     "How fast are rainforests being cut down?",
                     "How long does it take for a modern glass bottle to decompose?",
                     "How much trash does one person in the U.S. produce yearly?",
                     "How much of Earth's water is actually usable?" ]
    
    let answers = [["220 Million lbs", "140 Million lbs", "310 Million lbs"],
                   ["3,500", "4,700", "4,000"],
                   ["100,000", "75,000", "200,000"],
                   ["500 Acres per minute", "306 Acres per minute", "188 Acres per minute"],
                   ["4,000 years", "2,000 years", "3,000 years"],
                   ["1,609 lbs", "1,946 lbs", "2,098 lbs"],
                   ["2%", "3%", "7%"]]
    
    //variables
    var currentQuestion = 0
    var rightAnswerPlacement:UInt32 = 0
    
    //label
    @IBOutlet weak var lbl: UILabel!
    
    //button
    
//    @IBAction func action(_ sender: AnyObject)
//
   
    
//    {
//
//        if (sender.tag == Int(rightAnswerPlacement)) {
//            print ("Right!!!")
//        }
//        else {
//            print ("Wrong!!!!!")
//        }
//        if (currentQuestion != questions.count) {
//            newQuestion()
//        }
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        newQuestion()
//    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
                if (sender.tag == Int(rightAnswerPlacement)) {
                    print ("Right!!!")
                }
                else {
                    print ("Wrong!!!!!")
                }
                if (currentQuestion != questions.count) {
                    newQuestion()
                }
    }
    
 //function that displays new question
    func newQuestion() {
        lbl.text = questions[currentQuestion]
        
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        //create a button
        var button:UIButton = UIButton()
        
        var x = 1
        
        for i in 1...3 {
            //create a button
            button = view.viewWithTag(i) as! UIButton
            
            if (i == Int(rightAnswerPlacement)) {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else {
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
        }
        currentQuestion += 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

