//
//  ViewController.swift
//  MyStory
//
//  Created by David Helsel on 1/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    let backstory = ContextItem(text: "I am of the Saiyan race and come from Planet Vegeta. I was sent to Earth to kill off the entire planet, but end up doing the opposite.", image: UIImage(named: "planetvegeta")!, name: "My backstory")
    let ability = ContextItem(text:"I am able to go \"Super Saiyan\", which greatly increases my strength and speed. The newest and best form of this power is known as Ultra Instinct, which allows me to automatically dodge enemies.", image: UIImage(named: "supersaiyangoku")!, name: "My special ability")
    let bestbattle = ContextItem(text: "My greatest battle was at the tournament of power against Jirin. This tournament decided the fate of my universe, any my opponent Jirin was said to be the strongest out of everyone.", image: UIImage(named: "gokujirin")!, name: "My greatest battle")
    let whatido = ContextItem(text: "My main goal is to protect the people of Earth. I do this by battling other people and training in my free time.", image: UIImage(named: "gokutraining")!, name: "What I do")
    
    
    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailViewController {
            
            if tappedView.tag == 0 {
                detailViewController.screenInfo = backstory
            } else if tappedView.tag == 1 {
                detailViewController.screenInfo = ability
            } else if tappedView.tag == 2 {
                detailViewController.screenInfo = whatido
            } else if tappedView.tag == 3 {
                detailViewController.screenInfo = bestbattle
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

