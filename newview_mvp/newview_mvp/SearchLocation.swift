//
//  SearchLocation.swift
//  newview_mvp
//
//  Created by 김휘선 on 2023/08/09.
//
import SwiftUI
import MapKit

struct SearchLocation: View {
    @State private var region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: 40.83834587046632,
                    longitude: 14.254053016537693),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.03,
                    longitudeDelta: 0.03)
                )

    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    }
}

struct SearchLocation_Previews: PreviewProvider {
    static var previews: some View {
        SearchLocation()
    }
}
