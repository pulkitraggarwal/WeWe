//
//  ChooseTimeVC.swift
//  WeWe
//
//  Created by Pulkit Aggarwal on 6/14/17.
//  Copyright © 2017 Pulkit Aggarwal. All rights reserved.
//

import UIKit
import MapKit

class ChooseTimeVC: UIViewController, MKMapViewDelegate {
    
    
    @IBOutlet weak var timer: UIDatePicker!
    @IBOutlet weak var timebg: UIView!
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func CrossPressed(_ sender: Any) {
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        timebg.layer.cornerRadius = 30.0;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cl(_ sender: Any) {
        performSegue(withIdentifier: "chooseLocation", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ChooseLocationVC{
        }
    }
}
