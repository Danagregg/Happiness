//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Dana Gregg on 11/15/15.
//  Copyright © 2015 Dana Gregg. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource {

    
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
        }
    }
    
    var happiness: Int = 10 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    private func updateUI(){
        faceView.setNeedsDisplay()
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness-50)/50
    }

}
