//
//  ViewController.swift
//  GlobeRadio
//
//  Created by Satish Birajdar on 2017-11-16.
//  Copyright © 2017 SBSoftwares. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapWebView: UIWebView!
    var presenter: MapViewPresenter = MapViewPresenterImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.isIdleTimerDisabled = true
        presenter.attachView(view: self as MapViewPresenterView)
        presenter.getApiUrl()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
    }
}

extension MapViewController : MapViewPresenterView {
    func setWebview(url: NSURL) {
        let requestObj = URLRequest(url: url as URL)
        mapWebView.loadRequest(requestObj)
    }
}

