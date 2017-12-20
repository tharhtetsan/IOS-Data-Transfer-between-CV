//
//  LeagueCV.swift
//  Myswoosh
//
//  Created by Thar Htet San on 12/20/17.
//  Copyright © 2017 Thar Htet San. All rights reserved.
//

import UIKit

class LeagueCV: UIViewController {

    
    @IBOutlet weak var next_button: UIButton!
    
    var player : Player!

    @IBAction func Men_ButtonAction(_ sender: Any) {
        
        setLeague(desigerLeague: "Mens")
    }
    
    
    @IBAction func Women_ButtonAction(_ sender: Any) {
           setLeague(desigerLeague: "Womens")
    }
    
    @IBAction func CoAd_ButtonAction(_ sender: Any) {
        setLeague(desigerLeague: "Coed")
    }
    
    
    
    func setLeague(desigerLeague : String)
    {
        player.desigerLeague = desigerLeague
        next_button.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func next_ButttonAction(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC : SkillCV = segue.destination as? SkillCV {
            
            skillVC.player = self.player
        }
    }
    
        
        
        
    

}
