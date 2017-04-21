//
//  AccountViewController.swift
//  Favor
//
//  Created by Bassi on 4/18/17.
//  Copyright © 2017 Bassi. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    /*override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(SkillsDisplay.text)")

    }*/

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(AccountViewController.test)
        for values in AccountViewController.test
        {
            SkillsDisplay.text = SkillsDisplay.text! + values + "\n"
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var text = ""
    // Making this static is what keeps the same values when a new view is instantiated
    static var test = [String]()
     private var acceptable = false
    
    @IBOutlet weak var SkillsDisplay: UILabel!
    @IBOutlet weak var AddSkillsLabel: UITextField!
 
    

    @IBAction func AddSkillsButton(_ sender: Any) {
        for characters in (AddSkillsLabel.text?.characters)!
        {
            if(AddSkillsLabel.text != "" && !(characters < "a") && !(characters > "z"))
            {
               acceptable = true
            }
        }
        
            if(acceptable)
            {
                SkillsDisplay.text = SkillsDisplay.text! + (AddSkillsLabel?.text)! + "\n"
                AccountViewController.test.append(AddSkillsLabel.text!)
            }
        }
  
    /*@IBAction func AddSkill(_ sender: Any) {
        if(AddSkillsLabel.text != ""){
            
        SkillsDisplay.text = SkillsDisplay.text! + (AddSkillsLabel?.text)! + "\n"
        }
       
      
    }*/
    /*
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
