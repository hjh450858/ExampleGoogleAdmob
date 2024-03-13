//
//  ViewController.swift
//  ExampleGoogleAdmob
//
//  Created by 황재현 on 3/13/24.
//

import UIKit
import SnapKit
import GoogleMobileAds
import Then


class ViewController: UIViewController {
    /// 배너뷰
    lazy var bannerView = GADBannerView().then {
        $0.adUnitID = Constant.GoogleAdmobs.bannerKey
        $0.rootViewController = self
        $0.load(GADRequest())
        $0.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad()")
        
        configureUI()
        
    }
    
    /// UI  구현
    func configureUI() {
        print("configureUI()")
        
        view.addSubview(bannerView)
        
        bannerView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(16)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(44)
        }
    }
}

extension ViewController: GADBannerViewDelegate {
    
}
