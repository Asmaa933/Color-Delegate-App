//
//  CustomColorViewController.swift
//  Color Delegate
//
//  Created by AsMaa on 5/21/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit
protocol CustomColorViewControllerDelegate{
    func selectedColor(color:UIColor, text:String)
    
}
class CustomColorViewController: UIViewController {
    var delegate : CustomColorViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func chosenColorBtnTapped(_ sender: UIButton) {
        delegate?.selectedColor(color: sender.backgroundColor!, text: (sender.titleLabel?.text)!)
        navigationController?.popViewController(animated: true)
    }
    
    
}
