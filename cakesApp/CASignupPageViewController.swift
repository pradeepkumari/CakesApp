//
//  CASignupPageViewController.swift
//  cakesApp
//
//  Created by Vertace on 07/02/17.
//  Copyright © 2017 Vertace. All rights reserved.
//

import UIKit

class CASignupPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var skipsignupBtn: UIButton!
    @IBOutlet weak var termsandconditionBtn: UIButton!
    @IBOutlet weak var signinBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var phonenumberTextfield: UITextField!
    @IBOutlet weak var usernameTextfield: UITextField!

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var logoImageView: UIImageView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var termsandconditionBtnAction: UIButton!
    @IBAction func signinBtnAction(_ sender: Any) {
    }
    @IBAction func signupBtnAction(_ sender: Any) {
    }
    @IBAction func skipSignupBtnAction(_ sender: Any) {
        self.performSegue(withIdentifier: "goto_Skipsignup", sender: self)
        
    }
    
    
    func createUnderLineStylingForButton(button:UIButton)
    {
        
        let attributes = [NSUnderlineStyleAttributeName: NSUnderlineStyle.styleSingle.rawValue]
        let attributedText = NSAttributedString(string: button.currentTitle!, attributes: attributes)
        
        button.titleLabel?.attributedText = attributedText
        
    }

    
    
    override func viewDidAppear(_ animated: Bool) {
        
        //STYLING
        self.createRoudedTextField(textField: usernameTextfield, placeHolderText: "  User Name")
        self.createRoudedTextField(textField: passwordTextfield, placeHolderText: "  Password")
        self.createRoudedTextField(textField: phonenumberTextfield, placeHolderText: "  Phone Number")
        self.createRoudedTextField(textField: emailTextfield, placeHolderText: "  Email")
        
        self.createUnderLineStylingForButton(button: signinBtn)
        self.createUnderLineStylingForButton(button: termsandconditionBtn)
        self.createUnderLineStylingForButton(button: skipsignupBtn)
    }

    
    
    func createRoudedTextField(textField:UITextField, placeHolderText:String)
    {
        //        var frameRect = textField.frame;
        //        frameRect.size.height = 60;
        //        textField.frame = frameRect;
        let placeHolder=NSAttributedString(string: placeHolderText, attributes:    [NSForegroundColorAttributeName : UIColor.white])
        textField.attributedPlaceholder=placeHolder
        
        textField.rightViewMode = UITextFieldViewMode.always
        let imageView = UIImageView(frame: CGRect(x: -5, y: 0, width: 20, height: 20))
        let image = UIImage(named:"Delete.png" )
        imageView.image = image
        textField.rightView = imageView
        
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
