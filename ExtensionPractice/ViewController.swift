//
//  ViewController.swift
//  ExtensionPractice
//
//  Created by Roger Yuen on 2020/11/11.
//


import UIKit

@IBDesignable class ViewController: UIViewController {

   
    
    @IBOutlet weak var colorizeButton: UIButton!
    
    @IBOutlet weak var bumpButton: UIButton!
    
    
    @IBOutlet weak var dimButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bumpButton.layer.cornerRadius = 5
        dimButton.layer.cornerRadius = 5
        let label = UILabel()
                 label.text = "Peter"
                 label.font = UIFont.systemFont(ofSize: 50)
                 label.textColor = .black
                 label.sizeToFit()
                 view.addSubview(label)

        
    }
    
    @IBAction func colorizePressed(_ sender: Any) {
        colorizeButton.colorize()
    }
    
    @IBAction func bumpPressed(_ sender: Any) {
        print("pressed!")
        bumpButton.bump()
    }
    @IBAction func dimPressed(_ sender: Any) {
        dimButton.dim()
    }
}

