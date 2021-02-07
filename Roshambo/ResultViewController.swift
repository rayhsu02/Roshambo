//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Ray hsu on 2/5/21.
//

import UIKit

enum Shape: String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
    
    static func getRandomShap() -> Shape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let idx = Int(arc4random() % 3)
        return Shape(rawValue: shapes[idx])!
    }
}

class ResultViewController: UIViewController {
    
    let imageArray = ["itsATie", "Paper-Rock", "Rock-Scissors", "Scissors-Paper"]
    var imageIdx = 0
    var opponetchoise = Shape.getRandomShap()
    var userchoise : Shape!
    
    @IBOutlet weak var reultLabel: UILabel!
    
    
    @IBOutlet weak var matchNameLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showResult(userchoise: userchoise, opponetchoise: opponetchoise)
        // Do any additional setup after loading the view.
    }
    
    func showResult(userchoise: Shape, opponetchoise: Shape){
        
        var text: String
        var imageName: String
        let matchName = "\(userchoise.rawValue) vs \(opponetchoise.rawValue)"
        
        
        switch(userchoise, opponetchoise){
        case let(user, opponent) where user == opponent:
            text = "It is a tide."
            imageName = "itsATie"
        case (.Rock, .Scissors),(.Paper, .Rock), (.Scissors, .Paper):
            text = "You win."
            imageName = "\(userchoise.rawValue)-\(opponetchoise.rawValue)"
        default:
            text = "You lost." 
            imageName = "\(opponetchoise.rawValue)-\(userchoise.rawValue)"
            
        }
        reultLabel.text = text
        matchNameLabel.text = matchName
        resultImage.image = UIImage(named: imageName)
       
    }
    

    @IBAction func playagain_button_press(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
