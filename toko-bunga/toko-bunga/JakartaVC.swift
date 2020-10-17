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
    override func viewDidLoad() {
        super.viewDidLoad()

        lblPlace.layer.cornerRadius = 10
        
        // -6.1743028,106.8050573
        let location = CLLocationCoordinate2D(latitude: -6.1743028,
                                              longitude: 106.8050573)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Toko Bunga"
        annotation.subtitle = "Jakarta"
        mapView.addAnnotation(annotation)
        
    }
}
