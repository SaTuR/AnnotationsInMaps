//
//  PinView.swift
//  AnnotationsInMaps
//
//  Created by Ihonahan Buitrago on 1/28/16.
//  Copyright © 2016 NextUniversity. All rights reserved.
//

import UIKit
import MapKit

class PinView: MKAnnotationView {
    
    @IBOutlet weak var fullContainer : UIView!
    @IBOutlet weak var pinImage : UIImageView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        
        let nib = UINib(nibName: "PinView", bundle: nil)
        let views = nib.instantiate(withOwner: self, options: nil)
        let view = views[0] as! UIView
        self.addSubview(view)
        self.frame = view.bounds
        
        self.canShowCallout = true
    }
    
}
