//
//  HomepageViewController.swift
//  Favor
//
//  Created by Bassi on 4/18/17.
//  Copyright © 2017 Bassi. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationvc = segue.destination
        if let avc = destinationvc as? AccountViewController
        {
          
            print("HERE")
            if segue.identifier == "ShowMyAccount"
            {
                print("IN PREPARE")
                avc.text = "WHAT"
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
