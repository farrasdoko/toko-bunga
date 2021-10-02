//
//  JakartaVC.swift
//  toko-bunga
//
//  Created by Muhammad Hilmy Fauzi on 18/10/20.
//

import UIKit
import MapKit

class JakartaVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var lblPlace: UILabel!
    
    let jakartaFlorist: Florist = Florist(title: "Toko Bunga", subtitle: "Jakarta", latitude: -6.1743028, longitude: 106.8050573)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblPlace.layer.cornerRadius = 10
        
        let location = CLLocationCoordinate2D(latitude: jakartaFlorist.latitude,
                                              longitude: jakartaFlorist.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = jakartaFlorist.title
        annotation.subtitle = jakartaFlorist.subtitle
        mapView.addAnnotation(annotation)
        
    }
}
