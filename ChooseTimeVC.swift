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
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func CrossPressed(_ sender: Any) {
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
