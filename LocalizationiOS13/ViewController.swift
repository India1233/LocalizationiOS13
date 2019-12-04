//
//  ViewController.swift
//  LocalizationiOS13
//
//  Created by shiga on 04/12/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greeting: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        greeting.setTitle(NSLocalizedString("BUTTON_TITLE", comment: ""), for: .normal)
    }

    @IBAction func greeting(_ sender: Any) {
        setAlert()
    }
    
    private func setAlert(){
        
        let message = NSLocalizedString("POPUP_MESSAGE_TEXT", comment: "")
        let okBtnText = NSLocalizedString("POPUP_MESSAGE_OK_BUTTON", comment: "")
        
        
        
        
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        //create ok button
        let acceptAction = UIAlertAction(title: okBtnText, style: .default, handler: nil)
        alert.addAction(acceptAction)
        self.present(alert, animated: true, completion: nil)
    }
}

