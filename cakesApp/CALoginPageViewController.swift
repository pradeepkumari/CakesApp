//
//  CALoginPageViewController.swift
//  cakesApp
//
//  Created by Vertace on 07/02/17.
//  Copyright © 2017 Vertace. All rights reserved.
//

import UIKit

class CALoginPageViewController: UIViewController {
    @IBOutlet weak var logoImageView: UIImageView!

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var forgotPwdBtn: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var signupBtn: UIButton!
  
    @IBOutlet weak var skipLogin: UIButton!
    @IBOutlet weak var termsAndCondition: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

    
    override func viewDidAppear(_ animated: Bool) {
        
        //STYLING
        self.createRoudedTextField(textField: usernameTextfield, placeHolderText: "User Name")
        self.createRoudedTextField(textField: passwordTextfield, placeHolderText: "Password")
        self.createBorderStylingForButton(button: loginBtn)
        self.createUnderLineStylingForButton(button: signupBtn)
         self.createUnderLineStylingForButton(button: forgotPwdBtn)
        self.createUnderLineStylingForButton(button: termsAndCondition)
        self.createUnderLineStylingForButton(button: skipLogin)
        
    }
    
    func createRoudedTextField(textField:UITextField, placeHolderText:String)
    {
//        var frameRect = textField.frame;
//        frameRect.size.height = 60;
//        textField.frame = frameRect;
        let placeHolder=NSAttributedString(string: placeHolderText, attributes:    [NSForegroundColorAttributeName : UIColor.white])
        textField.attributedPlaceholder=placeHolder
        
        textField.rightViewMode = UITextFieldViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named:"Delete.png" )
        imageView.image = image
        textField.rightView = imageView
        
    }
    
    
    func createBorderStylingForButton(button:UIButton)
    {
        
        
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.white.cgColor
    }

    func createUnderLineStylingForButton(button:UIButton)
    {
        
    let attributes = [NSUnderlineStyleAttributeName: NSUnderlineStyle.styleSingle.rawValue]
    let attributedText = NSAttributedString(string: button.currentTitle!, attributes: attributes)
    
    button.titleLabel?.attributedText = attributedText
    
    }
    @IBAction func termsAndConditionBtnAction(_ sender: Any) {
    }
 
    @IBAction func skiploginBtnAction(_ sender: Any) {
    }
    @IBAction func signupBtnAction(_ sender: Any) {
        self.performSegue(withIdentifier: "goto_signupPage", sender: self)
        
    }
    @IBAction func forgotPwdAction(_ sender: Any) {
    }
    @IBAction func loginBtnAction(_ sender: Any) {
        self.performSegue(withIdentifier: "goto_Hometabbar", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
