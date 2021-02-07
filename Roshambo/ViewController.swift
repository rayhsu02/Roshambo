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
    
    func randomValue() -> Int{
       let value = arc4random() % 4
        return Int(value)
    }

    @IBAction func rockbutton_press(_ sender: UIButton) {
        let nextController = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        nextController.userchoise = getUserShape(sender: sender)
        present(nextController, animated: true, completion: nil)
        
    }
    
    @IBAction func paperbutton_press(_ sender: UIButton) {
        
        performSegue(withIdentifier: "viewResult", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "viewResult"){
            let controller = segue.destination as! ResultViewController
            controller.userchoise = getUserShape(sender: sender as! UIButton)
        }
    }
    
    func getUserShape(sender: UIButton) -> Shape{
        let title = sender.title(for: UIControl.State())!
        return Shape(rawValue: title)!
    }
    
}

