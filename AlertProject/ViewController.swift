//
//  ViewController.swift
//  AlertProject
//
//  Created by Fulya Sarıyar on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordAgainText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func singUpClick(_ sender: Any) {
        
        let alert = UIAlertController(title: "Error!", message: "User name not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (UIAlertAction) in
            //buttona tıklanınca olacak aksiyonlar
            print("button clicked")
        }
        alert.addAction(okButton) // butonu gömdük
        self.present(alert, animated: true,completion: nil)
        
        
        
    }
}

