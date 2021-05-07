//
//  MoscowViewController.swift
//  Apeiron.App
//
//  Created by Denis Bystruev on 01/09/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import MapKit
import UIKit

class MoscowViewController: MapViewController {
    
    // The main navigation title
    override var navigationTitle: String {
        return "Места съемок в Москве"
    }
    
    /// Moscow map view
    @IBOutlet weak var moscowMapView: MKMapView!
    
    var imageName: String!
    var imageText: String!

    /// Called when the map view has been loaded
    override func viewDidLoad() {
        // assign Moscow map view to the parent map view
        mapView = moscowMapView
        
        // use Moscow places as the places to show
        places = moscowPlaces
        
        // perform parent's viewDidLoad()
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "ImageSegue" else {
            return
        }
        
        let imageViewController = segue.destination as! ImageViewController
        imageViewController.name = imageName
        imageViewController.text = imageText
    }
}
