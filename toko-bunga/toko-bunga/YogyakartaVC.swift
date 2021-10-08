//
//  YogyakartaVC.swift
//  toko-bunga
//
//  Created by Muhammad Hilmy Fauzi on 08/10/21.
//

import UIKit
import MapKit

class YogyakartaVC: UIViewController {

    @IBOutlet weak var lblPlace: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    let yogyaaFlorist: Florist = Florist(title: "Devika Florist Jogja", subtitle: "Yogyakarta", latitude: -3.277923, longitude: 102.5280737)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblPlace.layer.cornerRadius = 10
        
        let location = CLLocationCoordinate2D(latitude: yogyaaFlorist.latitude,
                                              longitude: yogyaaFlorist.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = yogyaaFlorist.title
        annotation.subtitle = yogyaaFlorist.subtitle
        mapView.addAnnotation(annotation)
    }
}
