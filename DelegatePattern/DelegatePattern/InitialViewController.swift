//
//  InitialViewController.swift
//  DelegatePattern
//
//  Created by Martin Vacas on 29/9/17.
//  Copyright © 2017 Martin Vacas. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController, VCFinalDelegate {

    @IBOutlet var initialVCLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func performSegue(_ sender: Any) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FinalViewController {
            destination.delegate = self
        }
    }
    
    func finishPassing(string: String) {
        print(string)
        initialVCLabel.text = string
    }

}
