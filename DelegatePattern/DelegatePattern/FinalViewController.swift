//
//  FinalViewController.swift
//  DelegatePattern
//
//  Created by Martin Vacas on 29/9/17.
//  Copyright © 2017 Martin Vacas. All rights reserved.
//

import UIKit

//Protocol to implement Delegate Pattern
protocol VCFinalDelegate {
    func finishPassing(string: String)
}

class FinalViewController: UIViewController {

    @IBOutlet var finalVCTextField: UITextField!
    
    var delegate: VCFinalDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func passData(_ sender: Any) {
        delegate?.finishPassing(string: finalVCTextField.text!)
        self.navigationController?.popViewController(animated: true)
    }

}
