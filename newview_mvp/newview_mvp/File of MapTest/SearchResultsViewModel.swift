//
//  SearchResultsViewModel.swift
//  newview_mvp
//
//  Created by 김휘선 on 2023/08/11.
//

import Foundation
import MapKit

@MainActor
class SearchResultsViewModel: ObservableObject{
    
    @Published var places = [PlaceViewModel]()
    
    func search(text:String, region: MKCoordinateRegion){
        
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = text
        searchRequest.region = region
        
        let search = MKLocalSearch(request: searchRequest)
        
        search.start{ response, error in
            guard let response = response else{
                print("ERROR: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            self.places = response.mapItems.map(PlaceViewModel.init)
        }
    }
}


struct PlaceViewModel : Identifiable{
    
    let id = UUID()
    private var mapItem: MKMapItem
    
    init(mapItem: MKMapItem){
        self.mapItem = mapItem
    }
    
    var name : String{
        mapItem.name ?? ""
    }
}
