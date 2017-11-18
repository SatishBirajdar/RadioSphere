//
//  MapViewPresenterImpl.swift
//  GlobeRadio
//
//  Created by Satish Birajdar on 2017-11-16.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import Foundation

class MapViewPresenterImpl : MapViewPresenter {
    var view: MapViewPresenterView?
    
//    init(apiUrl: String) {
//        <#statements#>
//    }
    
    func attachView(view: MapViewPresenterView) {
        self.view = view
    }
    
    func getApiUrl(){
//        let url = "http://radio.garden/live/"
        let url = NSURL (string: "http://radio.garden/live/")
        self.view?.setWebview(url: url!)
    }
    
    
}
