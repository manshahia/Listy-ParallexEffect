//
//  ParaCell.swift
//  ParallexEffect
//
//  Created by Ravi Inder Manshahia on 13/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit


class ParaCell: UITableViewCell {

    @IBOutlet weak var picture : UIImageView!
    @IBOutlet weak var label : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //SetupParallex
        setupParallex()
    }
    
    func customiseCell(withImage image: UIImage, andLabel text: String)
    {
        self.picture.image = image
        self.label.text = text
    }
    
    func setupParallex()
    {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        picture.addMotionEffect(motionEffectGroup)
        
        
    }
    

    
    
    
    
    
    
    
    
    
    

}
