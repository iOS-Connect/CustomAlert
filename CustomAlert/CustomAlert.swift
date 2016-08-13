//
//  CustomAlert.swift
//  CustomAlert
//
//  Created by John Regner on 7/31/16.
//  Copyright © 2016 WigglingScholars. All rights reserved.
//

import UIKit

class CustomAlert: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var alertMessageLabel: UILabel!

    var alertTitle: String = ""
    var alertMessage: String = ""
    var action: () -> () = { }

    override func viewWillAppear(animated: Bool) {
        titleLabel.text = alertTitle
        alertMessageLabel.text = alertMessage
    }

    @IBAction func doAction(sender: UIButton) {
        action()
    }


//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        modalPresentationStyle = .OverCurrentContext
//    }


//    init(title: String, message: String, action: () -> ()) {
//        self.alertTitle = title
//        self.alertMessage = message
//        self.action = action
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}

