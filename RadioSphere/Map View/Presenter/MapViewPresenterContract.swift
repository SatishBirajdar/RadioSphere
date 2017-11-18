//
//  MapViewPresenterContract.swift
//  GlobeRadio
//
//  Created by Satish Birajdar on 2017-11-16.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import Foundation

protocol MapViewPresenterView {
    func setWebview(url: NSURL)
}

protocol MapViewPresenter {
    func attachView(view: MapViewPresenterView)
    func getApiUrl()
}
