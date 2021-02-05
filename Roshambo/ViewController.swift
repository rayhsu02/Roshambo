//
//  ViewController.swift
//  Roshambo
//
//  Created by Ray hsu on 2/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paperbutton: UIButton!
    @IBOutlet weak var rockbutton: UIButton!
    @IBOutlet weak var scissorbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rockbutton_press(_ sender: Any) {
        let nextController = ResultViewController()
        present(nextController, animated: true, completion: nil)
        
    }
    
}

