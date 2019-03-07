//
//  ViewController.swift
//  MVVMiOSExample
//
//  Created by ian schoenrock on 3/6/19.
//  Copyright © 2019 ian schoenrock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    
    
    var viewModel = ViewControllerViewModel(){
        didSet{
            updateUI(viewModel)
        }
    }
    
    @IBAction func incrementCount(_ sender: UIButton) {
        viewModel.incrementCountLogic()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = ""
        viewModel.delegate = self
    }
}

extension ViewController{
    func updateUI(_ viewModel: ViewControllerViewModel){
        counterLabel.text = viewModel.viewModelCounterLabel
    }
}

extension ViewController: CountIncrementerDelegate{
    func didHitFive() {
        print("You have hit the button five times!")
    }
}

