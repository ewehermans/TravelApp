//
//  ProfileViewController.swift
//  TravelApp
//
//  Created by Ewoud Hermans on 16/12/16.
//  Copyright © 2016 Parse. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBAction func showMapButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "showMapView", sender: self)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
