//
//  BatamVC.swift
//  toko-bunga
//
//  Created by Muhammad Hilmy Fauzi on 18/10/20.
//

import UIKit
import MapKit

class BatamVC: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var lblPlace: UILabel!
    
    let batamFlorist: Florist = Florist(title: "Toko Bunga", subtitle: "Batam", latitude: 1.1295293, longitude: 104.0335794)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblPlace.layer.cornerRadius = 10
        
        let location = CLLocationCoordinate2D(latitude: batamFlorist.latitude,
                                              longitude: batamFlorist.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = batamFlorist.title
        annotation.subtitle = batamFlorist.subtitle
        mapView.addAnnotation(annotation)
        
    }
}
