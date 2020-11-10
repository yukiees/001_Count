//
//  ViewController.swift
//  001_Count
//
//  Created by 松島優希 on 2020/11/11.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        color()
    }

    @IBAction func minus(_ sender: Any) {
        number = number - 1
        label.text = String(number)
        color()
    }
    
    @IBAction func clear(_ sender: Any) {
        number = 0
        label.text = String(number)
        color()
    }
    
//    func color(){
//        if number >= 10{
//            label.textColor = UIColor.red
//        }else if number <= -10{
//            label.textColor = UIColor.blue
//        }else{
//            label.textColor = UIColor.black
//        }
//    }
 
    func color(){
        switch number{
        case Int.min ..< -10:
            label.textColor = UIColor.blue
            
        case 10 ..< Int.max:
            label.textColor = UIColor.red
            
        default:
            label.textColor = UIColor.black
        }
    }
}

