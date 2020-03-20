//
//  SecondViewController.swift
//  NubankBrasaHacks2020_2
//
//  Created by Thomas Demoner on 3/19/20.
//  Copyright © 2020 com.DemonerThomas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var comprasMaxLabel: UILabel!

    @IBOutlet weak var gulaMaxLabel: UILabel!

    @IBOutlet weak var transMaxLabel: UILabel!

    @IBOutlet weak var contasMaxLabel: UILabel!

    @IBOutlet weak var subsMaxLabel: UILabel!

    @IBOutlet weak var comprasStep: UIStepper!

    @IBOutlet weak var comprasProgBar: UIProgressView!

    @IBOutlet weak var valorComprasLabel: UILabel!


    @IBAction func comprasMazStepper(_ sender: UIStepper) {
        comprasMaxLabel.text = String(format:"%.0f", sender.value)
//        let newProg = (Float(valorComprasLabel.text as! NSString)) //Float(comprasMaxLabel.text))
//
//        comprasProgBar.setProgress(newProg, animated: true)

    }

//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

