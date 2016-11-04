//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Carlos Noble Curveira on 2016-11-04.
//  Copyright © 2016 Carlos Noble Curveira. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // MARK: Properties
    
    var rating = 0
    
    var ratingButtons = [UIButton]()
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0...4 {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.red
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
            ratingButtons += [button]
            addSubview(button)
        }
    }
    override public var intrinsicContentSize: CGSize {
        get {
            return CGSize(width: 240, height: 44)
        }
    }
    override func layoutSubviews() {
        var buttonFrame = CGRect(x: 0, y: 0, width: 44, height: 44)
        for (index, button) in ratingButtons.enumerated(){
            buttonFrame.origin.x = CGFloat(index * (44 + 5))
            button.frame = buttonFrame
        }
    }
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button Pressed")
    }
}
