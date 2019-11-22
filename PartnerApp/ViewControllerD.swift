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
    @IBOutlet weak var TeacherImage: UIImageView!
    @IBOutlet weak var TeacherStats: UILabel!
    var Identifier = 0
    var Staff = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        
        Button1.setTitle("\(Names[0])", for: .normal)
        Button2.setTitle("\(Names[1])", for: .normal)
        Button3.setTitle("\(Names[2])", for: .normal)
        Button4.setTitle("\(Names[3])", for: .normal)
        Button5.setTitle("\(Names[4])", for: .normal)
        Button6.setTitle("\(Names[5])", for: .normal)
        Button7.setTitle("\(Names[6])", for: .normal)
        Button8.setTitle("\(Names[7])", for: .normal)
    }
    
    @IBAction func TeacherSelect(_ sender: UIButton)
    {
        print("e")
        Staff = sender.titleLabel!.text!
        
       SetOptions()
               
           
    }
    
    
    func SetOptions()
    {
        if Staff == "\(Names[Identifier])"
        {
            TeacherImage.image = UIImage(named: "\(Names[Identifier])")
            TeacherStats.text = "\(Names[Identifier])"
            Identifier = 0
        }
        else
        {
            Identifier = Identifier + 1
            SetOptions()
        }
    }
   
}
