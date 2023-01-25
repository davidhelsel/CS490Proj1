//
//  DetailViewController.swift
//  MyStory
//
//  Created by David Helsel on 1/24/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var screenImage: UIImageView!
    
    @IBOutlet weak var screenText: UILabel!
    
    @IBOutlet weak var titleScreen: UINavigationItem!
    
    
    var screenInfo: ContextItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenImage.image = screenInfo?.image
        screenText.text = screenInfo?.text
        titleScreen.title = screenInfo?.name

        // Do any additional setup after loading the view.
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
