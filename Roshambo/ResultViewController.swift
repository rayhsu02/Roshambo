//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Ray hsu on 2/5/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    let imageArray = ["itsATie", "PaperCoversRock", "RockCrushesScissors", "ScissorsCutPaper"]
    var imageIdx = 0
    
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultImage.image = UIImage(named: imageArray[imageIdx])

        // Do any additional setup after loading the view.
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
