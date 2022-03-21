//
//  ViewController.swift
//  XIBMedium
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 07/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var customView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect = CGRect(x: 100, y: 100, width: 120, height: 240)
        let newView = CustomView(frame: rect)
        newView.mainView.backgroundColor = .green
        self.view.addSubview(newView)
        
        if let image = UIImage(systemName: "pencil.circle") {
            newView.configureImageAndText(image: image, text: "pencil")
            
        }
        
        if let image = UIImage(systemName: "pencil") {
            customView.configureImageAndText(image: image, text: "pencil")
            
        }
    }

}
