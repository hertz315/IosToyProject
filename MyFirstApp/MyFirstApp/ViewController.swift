//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Hertz on 7/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        mainLabel.text = "안녕하세요 Tom"
        mainLabel.textColor = UIColor.red
        mainLabel.backgroundColor = #colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)
        
    }
}

