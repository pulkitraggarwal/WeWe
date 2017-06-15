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
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func crossPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func act1(_ sender: Any) {
        performSegue(withIdentifier: "choosetime", sender: self)
    }
    @IBAction func act(_ sender: Any) {
        performSegue(withIdentifier: "choosetime", sender: self)
    }
    @IBAction func act3(_ sender: Any) {
        performSegue(withIdentifier: "choosetime", sender: self)
    }
    @IBAction func act4(_ sender: Any) {
        performSegue(withIdentifier: "choosetime", sender: self)
    }
    @IBAction func act5(_ sender: Any) {
        performSegue(withIdentifier: "choosetime", sender: self)
    }
    @IBAction func act6(_ sender: Any) {
        performSegue(withIdentifier: "choosetime", sender: self)
    }
    @IBAction func act7(_ sender: Any) {
        performSegue(withIdentifier: "choosetime", sender: self)
    }
    @IBAction func act8(_ sender: Any) {
        performSegue(withIdentifier: "choosetime", sender: self)
    }
    @IBAction func act9(_ sender: Any) {
    }
}
