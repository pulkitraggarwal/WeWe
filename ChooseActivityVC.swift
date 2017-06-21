//
//  ChooseActivityVC.swift
//  WeWe
//
//  Created by Pulkit Aggarwal on 6/14/17.
//  Copyright © 2017 Pulkit Aggarwal. All rights reserved.
//

import UIKit
import MapKit

class ChooseActivityVC: UIViewController, MKMapViewDelegate {
    
    @IBAction func ct(_ sender: Any) {
        performSegue(withIdentifier: "chooseTime", sender: self)
    }
  
    
        override func viewDidLoad() {


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func crossPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ChooseTimeVC{
        }
    }
   
}
   
