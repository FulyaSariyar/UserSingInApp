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
        /*
        let alert = UIAlertController(title: "Error!", message: "User name not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (UIAlertAction) in
            //buttona tıklanınca olacak aksiyonlar
            print("button clicked")
        }
        alert.addAction(okButton) // butonu gömdük
        self.present(alert, animated: true,completion: nil)
         */
        
        if userNameText.text == ""
        {
            makeAlert(titleInput: "Error", messageInput: "Username not found!")
           /* let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)*/
        }
        else if passwordText.text == ""
        {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
            /*let alert = UIAlertController(title: "Error", message: "Password not found!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)*/
        }
        else if passwordText.text != passwordAgainText.text{
            makeAlert(titleInput: "Error", messageInput: "Password do not match!")
          /*  let alert = UIAlertController(title: "Error", message: "Password do not match!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)*/
        } else {
            makeAlert(titleInput:"Success", messageInput: "User OK")
            /*let alert = UIAlertController(title: "Error", message: "User OK", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)*/
        }
        //Sürekli copy paste yapmaktansa fonksiyon yazılabilir.
        
    }
    
    func makeAlert (titleInput: String, messageInput:String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}

