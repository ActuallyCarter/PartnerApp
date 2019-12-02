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
    
    var myImageViews: [UIImageView] = []
    var myImageViews2: [UIImageView] = []
    var Compare: [UIImageView] = []
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
    var counter = 0
    var Names = ["Pete Dunaghy","pete dunaghy-1", "Meghan Gerber","meghan gerber-1", "Michal Fein", "michal fein-1","Megan Malligan","megan malligan-1","Victoria Pollard","victoria pollard-1","Chris Walter","chris walter-1","Ian Althouse","ian althouse-1","Jeffrey Jackson","jeffrey jackson-1"]
    var Names2 = ["Pete Dunaghy","pete dunaghy-1", "Meghan Gerber","meghan gerber-1", "Michal Fein", "michal fein-1","Megan Malligan","megan malligan-1","Victoria Pollard","victoria pollard-1","Chris Walter","chris walter-1","Ian Althouse","ian althouse-1","Jeffrey Jackson", "jeffrey jackson-1"]
    var compare2: [String] = []
    var pics: [UIImage] = [UIImage(named: "Chris Walter")!]
    var buttons: [UIButton] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons.append(Tile1)
        buttons.append(Tile2)
        buttons.append(Tile3)
        buttons.append(Tile4)
        buttons.append(Tile5)
        buttons.append(Tile6)
        buttons.append(Tile7)
        buttons.append(Tile8)
        buttons.append(Tile9)
        buttons.append(Tile10)
        buttons.append(Tile11)
        buttons.append(Tile12)
        buttons.append(Tile13)
        buttons.append(Tile14)
        buttons.append(Tile15)
        buttons.append(Tile16)
    
        
        myImageViews.append(imageTile1)
        myImageViews.append(imageTile2)
        myImageViews.append(imageTile3)
        myImageViews.append(imageTile4)
        myImageViews.append(imageTile5)
        myImageViews.append(imageTile6)
        myImageViews.append(imageTile7)
        myImageViews.append(imageTile8)
        myImageViews.append(imageTile9)
        myImageViews.append(imageTile10)
        myImageViews.append(imageTile11)
        myImageViews.append(imageTile12)
        myImageViews.append(imageTile13)
        myImageViews.append(imageTile14)
        myImageViews.append(imageTile15)
        myImageViews.append(imageTile16)
        
        myImageViews2.append(imageTile1)
        myImageViews2.append(imageTile2)
        myImageViews2.append(imageTile3)
        myImageViews2.append(imageTile4)
        myImageViews2.append(imageTile5)
        myImageViews2.append(imageTile6)
        myImageViews2.append(imageTile7)
        myImageViews2.append(imageTile8)
        myImageViews2.append(imageTile9)
        myImageViews2.append(imageTile10)
        myImageViews2.append(imageTile11)
        myImageViews2.append(imageTile12)
        myImageViews2.append(imageTile13)
        myImageViews2.append(imageTile14)
        myImageViews2.append(imageTile15)
        myImageViews2.append(imageTile16)
        startUp()
        // for mem game use two layers of views, set alphas
    }
    
    @IBAction func tilePressed(_ sender: UIButton) {
        
//        print("pressed")

        
        if sender.alpha == CGFloat(1.0) && counter < 2{
        sender.alpha = 0.02
        counter = counter + 1
           
            
            sender.tag = 1
            for allButton in 0...15 {
                if buttons[allButton].tag == 1{
                    myImageViews2[allButton].tag = 1
                    print("yes")
                }
            }

//        print("the word")
        }
    
        
        else if counter == 2{
            
            counter = 0
            for Images in myImageViews2{
                if Images.tag == 1{
                    Compare.append(Images)
                }
                
            }
            for f in Names2{
                if Compare[0].image == UIImage(named: "\(f)") || Compare[1].image == UIImage(named: "\(f)"){
                    compare2.append(f)
                   
                   
                    
                }
      
            }
            
            if compare2[0] == compare2[1].lowercased() + "-1" || compare2[1] == compare2[0].lowercased() + "-1" {
                for k in buttons{
                    if k.tag == 1{
                        k.isEnabled = false
                        print("???")
                        
                    }
                }
                Reset()
                
                
            }
            else {
                print(compare2[0])
                Reset()
                //make reset function that resets all tags, arrays back to normal
                 
            }

         setToDefault()
        }
        
       print(counter)
    }
    
    func startUp(){
        for n in myImageViews{
            
        
            var rand = Int.random(in: 0...Names.count - 1)
            n.image = UIImage(named: "\(Names[rand])")
            Names.remove(at: rand)
            
        
        }
    }
    
    func setToDefault() {
        
        for NotMatchedButtons in buttons {
            
            if NotMatchedButtons.isEnabled == true{
                NotMatchedButtons.alpha = 1.0
            }
            
        }
      
        
    }
    
    func Reset(){

        
        for NotmatchedImages in myImageViews2{
            NotmatchedImages.tag = 0
        }
        for NotMatchedButtons in buttons{
            NotMatchedButtons.tag = 0
        }
        
        compare2.removeAll()
        Compare.removeAll()
    
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
