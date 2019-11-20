//
//  ViewControllerM.swift
//  PartnerApp
//
//  Created by Reese Hemery on 11/18/19.
//  Copyright © 2019 We Make Flashlight Apps. All rights reserved.
//

import UIKit

class ViewControllerM: UIViewController {

    @IBOutlet weak var imageTile1: UIImageView!
    
    @IBOutlet weak var imageTile2: UIImageView!
    
    @IBOutlet weak var imageTile3: UIImageView!
    
    @IBOutlet weak var imageTile4: UIImageView!
    
    @IBOutlet weak var imageTile5: UIImageView!
    
    @IBOutlet weak var imageTile6: UIImageView!
    
    @IBOutlet weak var imageTile7: UIImageView!
    
    @IBOutlet weak var imageTile8: UIImageView!
    
    @IBOutlet weak var imageTile9: UIImageView!
    
    @IBOutlet weak var imageTile10: UIImageView!
    
    @IBOutlet weak var imageTile11: UIImageView!
    
    @IBOutlet weak var imageTile12: UIImageView!
    
    @IBOutlet weak var imageTile13: UIImageView!
    
    @IBOutlet weak var imageTile14: UIImageView!
    
    @IBOutlet weak var imageTile16: UIImageView!
    @IBOutlet weak var imageTile15: UIImageView!
    
    @IBOutlet weak var Tile1: UIButton!
    
    @IBOutlet weak var Tile2: UIButton!
    
    @IBOutlet weak var Tile3: UIButton!
    @IBOutlet weak var Tile4: UIButton!
    
    @IBOutlet weak var Tile5: UIButton!
    
    @IBOutlet weak var Tile6: UIButton!
    
    @IBOutlet weak var Tile7: UIButton!
    
    @IBOutlet weak var Tile8: UIButton!
    
    @IBOutlet weak var Tile9: UIButton!
    @IBOutlet weak var Tile10: UIButton!
    
    @IBOutlet weak var Tile11: UIButton!
    
    @IBOutlet weak var Tile12: UIButton!
    
    @IBOutlet weak var Tile13: UIButton!
    @IBOutlet weak var Tile14: UIButton!
    
    @IBOutlet weak var Tile15: UIButton!
    @IBOutlet weak var Tile16: UIButton!
    var Names = ["Pete Dunaghy", "", "","","","Chris Walter","Ian Althouse",""]
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // for mem game use two layers of views, set alphas
    }
    
    @IBAction func tilePressed(_ sender: UIButton) {
        
        print("pressed")
        
        if sender.alpha == CGFloat(1.0) && counter < 2{
        sender.alpha = 0.02
        counter = counter + 1
        print("the word")
        }
        else if counter == 2{
           setToDefault()
            counter = 0
        }
        
    }
    func setToDefault() {
        Tile1.alpha = 1.0
        Tile2.alpha = 1.0
        Tile3.alpha = 1.0
        Tile4.alpha = 1.0
        Tile5.alpha = 1.0
        Tile6.alpha = 1.0
        Tile7.alpha = 1.0
        Tile8.alpha = 1.0
        Tile9.alpha = 1.0
        Tile10.alpha = 1.0
        Tile11.alpha = 1.0
        Tile12.alpha = 1.0
        Tile13.alpha = 1.0
        Tile14.alpha = 1.0
        Tile15.alpha = 1.0
        Tile16.alpha = 1.0

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
