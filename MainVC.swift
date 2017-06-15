//
//  ViewController.swift
//  WeWe
//
//  Created by Pulkit Aggarwal on 6/14/17.
//  Copyright © 2017 Pulkit Aggarwal. All rights reserved.
//

import UIKit
import MapKit

class MainVC: UIViewController, MKMapViewDelegate  {

    @IBOutlet weak var mapView: MKMapView!

    @IBAction func addEvent(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}

