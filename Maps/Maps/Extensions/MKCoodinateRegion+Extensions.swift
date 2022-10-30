//
//  MKCoodinateRegion+Extensions.swift
//  Maps
//
//  Created by park sangil on 2022/10/29.
//

import Foundation
import MapKit

extension MKCoordinateRegion {
    
    static func defaultRegion() -> MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.2445863,longitude:132.5575197),span:MKCoordinateSpan(latitudeDelta:0.025,longitudeDelta: 0.025))
    }
    
    static func regionFromLandmark(_ landmark: Landmark) -> MKCoordinateRegion {
        MKCoordinateRegion(center: landmark.coordinate, span: MKCoordinateSpan(latitudeDelta:0.025,longitudeDelta:0.025))
    }
}
