//
//  ViewController.swift
//  toko-bunga
//
//  Created by Muhammad Hilmy Fauzi on 18/10/20.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1.1295293,104.0335794
        let location = CLLocationCoordinate2D(latitude: 1.1295293,
                                              longitude: 104.0335794)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Toko Bunga"
        annotation.subtitle = "Batam"
        mapView.addAnnotation(annotation)
    }
    
    
}

