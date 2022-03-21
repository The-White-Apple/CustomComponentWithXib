//
//  CustomView.swift
//  XIBMedium
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 16/03/22.
//

import UIKit


class CustomView: UIView {
    static let identifier = "CustomView"

    @IBOutlet var mainView: UIView!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }

    func initSubviews() {

        let nib = UINib(nibName: CustomView.identifier, bundle: nil)

        guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                            UIView else {fatalError("Unable to convert nib")}

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        addSubview(view)

    }
    
    func configureImageAndText(image : UIImage, text : String){
        textLabel.text = text
        imageView.image = image
    }

}
