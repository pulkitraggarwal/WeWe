//
//  ChooseLocationVC.swift
//  WeWe
//
//  Created by Pulkit Aggarwal on 6/18/17.
//  Copyright © 2017 Pulkit Aggarwal. All rights reserved.
//

import UIKit
import MapKit

class ChooseLocationVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager();
    var mapHasCenterOnce = false
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.layer.cornerRadius = 15.0
        mapView.delegate = self
        mapView.userTrackingMode = MKUserTrackingMode.follow
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CrossPressed(_ sender: Any) {
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
   
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        locationAuthStatus()
    }
    
    func locationAuthStatus(){
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        }
    }
    
    func centerMapOnLocation(location: CLLocation){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, 2000, 2000)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        if let loc = userLocation.location{
            if !mapHasCenterOnce {
                centerMapOnLocation(location: loc)
                mapHasCenterOnce = true
            }
        }
    }
}
