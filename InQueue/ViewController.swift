//
//  ViewController.swift
//  InQueue
//
//  Created by Jaeson Booker on 11/23/18.
//  Copyright © 2018 Jaeson Booker. All rights reserved.
//

import UIKit
import MapKit

final class MapAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        super.init()
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultClusterAnnotationViewReuseIdentifier)
        let venueCoordinate = CLLocationCoordinate2D(latitude: 37.780664, longitude: -122.416183)
        let venueAnnotation = MapAnnotation(coordinate: venueCoordinate, title: "Tenderloin", subtitle: "Eaten Them Tender Loins TM")
        mapView.addAnnotation(venueAnnotation)
    }


}

