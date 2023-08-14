//
//  MKCoordinateRegion+Extensions.swift
//  newview_mvp
//
//  Created by 김휘선 on 2023/08/11.
//

import Foundation
import MapKit

extension MKCoordinateRegion{
    static func defaultRegion() -> MKCoordinateRegion{
        MKCoordinateRegion(center : CLLocationCoordinate2D.init(latitude: 29.726819, longitude: -95.393692),
        latitudinalMeters: 100, longitudinalMeters: 100)
    }
    
}
