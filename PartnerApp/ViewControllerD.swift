//
//  ViewControllerD.swift
//  PartnerApp
//
//  Created by Reese Hemery on 11/18/19.
//  Copyright © 2019 We Make Flashlight Apps. All rights reserved.
//

import UIKit

class ViewControllerD: UIViewController {
    let Names = ["Pete Dunaghy", "Michal Fien", "Meghan Gerber","Megan Malligan","Victoria Pollard","Chris Walter","Ian Althouse","Jeffrey Jackson"]
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Button1.titleLabel?.text = "\(Names[0])"
    }
    

   
}
