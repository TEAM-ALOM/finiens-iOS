//
//  MapTest.swift
//  newview_mvp
//
//  Created by 김휘선 on 2023/08/11.
//

import SwiftUI  // 지도 검색 부분 테스트 중입니다.
    
struct MapTest: View {
    @StateObject private var locationManager = LocationManager()
    @State private var search : String = ""
    @StateObject private var vm = SearchResultsViewModel()
    var body: some View {
        
        NavigationView{
            VStack{
                
                List(vm.places){place in
                    Text(place.name)
                }
                
            }.searchable(text : $search)
                .onChange(of: search, perform: {searchText in
                    
                    if !searchText.isEmpty{
                        vm.search(text: searchText, region: locationManager.region)
                    } else{
                        vm.places = []
                    }
                })
                .navigationTitle("Places")
        }
    }
}

struct MapTest_Previews: PreviewProvider {
    static var previews: some View {
        MapTest()
    }
}
