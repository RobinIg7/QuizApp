//
//  SecondViewController.swift
//  QuizApp
//
//  Created by Apple on 8/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//
//
import UIKit
protocol SecondViewControllerDelegate: class {
    func textChanged(text:String?)
}
class SecondViewController: UIViewController {
    weak var delegate: SecondViewControllerDelegate?
    
    var text: String? = nil
    var messageCustom = String()
    
    @IBOutlet weak var label: UILabel!
    
    
    
   
   let viewController1 = ViewController()





    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = text

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


   func finalScore() -> String {

        if viewController1.points >= 6 {
            messageCustom = "You are environmentally conscious!🤩 Keep up the good work! We need more people like you, here are some ways you can continue to help!🌍💙"

        }
        else if viewController1.points >= 4 && viewController1.points < 6 {
            messageCustom = "You are trying your best!👍 More than some people can say. Here are some more ways to keep helping the planet!🌿☀️"
        }
        else {
            messageCustom = "Being harmful to the environment is NOT cute!!🙅‍♀️🙅‍♂️ Here are some ways you can stop your bad habits!!☁️🌊"
        }
        print("\(viewController1.points)")

        return messageCustom

    }
    
   
    
//    @IBAction func showScore(_ sender: Any) {
//        let alertController = UIAlertController(title: "\(viewController1.points)" , message :"omg", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//        present(alertController, animated: true, completion: nil)
//    }
    
    }
    






