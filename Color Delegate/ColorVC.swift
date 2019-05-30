//
//  ViewController.swift
//  Color Delegate
//
//  Created by AsMaa on 5/20/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class ColorVC: UIViewController, CustomColorViewControllerDelegate {
     @IBOutlet weak var colorLabel: UILabel!
    func selectedColor(color: UIColor, text: String) {
        view.backgroundColor = color
        colorLabel.text = text
    }
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backSegue"{
            guard let colorPickerVC = segue.destination as? CustomColorViewController else {return}
            colorPickerVC.delegate = self
        }
    }
}

