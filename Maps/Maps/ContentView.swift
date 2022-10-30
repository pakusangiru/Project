//
//  ContentView.swift
//  Maps
//
//  Created by park sangil on 2022/10/28.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @EnvironmentObject var localSearchService: LocalSearchService
    @State private var search: String = ""
    
    var body: some View {
        VStack {
            TextField("Search", text: $search)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    localSearchService.search(query:search)
                }.padding()
            
            if localSearchService.landmarks.isEmpty {
                Text("店の名前を検索してください。")
                    .padding()
                    .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.gray, lineWidth:2)
                    )
            }
            
            LandmarkListView()
            
            Map(coordinateRegion: $localSearchService.region,
                showsUserLocation: true, annotationItems:
                    localSearchService.landmarks){ landmark in
                
                MapAnnotation(coordinate: landmark.coordinate)
                {
                    Image(systemName: "heart")
                        .symbolVariant(.fill)
                        .foregroundColor(localSearchService.landmark ==
                                         landmark ? .purple: .red)
                        .scaleEffect(localSearchService.landmark == landmark ?2 : 1)
                }
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(LocalSearchService())
    }
}
