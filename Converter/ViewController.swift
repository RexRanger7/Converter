//
//  ViewController.swift
//  Converter
//
//  Created by Алексей Ёлчев on 11.06.2020.
//  Copyright © 2020 Алексей Ёлчев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rbtnUS: UIButton!
    @IBOutlet weak var rbtnEuro: UIButton!
    @IBOutlet weak var rbtnPound: UIButton!
    @IBOutlet weak var txtItemPrice: UITextField!
    @IBOutlet weak var lblDLCost: UILabel!
    @IBOutlet weak var lblEuroCost: UILabel!
    @IBOutlet weak var lblRublesCost: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rbtnAction(_ sender: UIButton) {
        let itemCost = Float(txtItemPrice.text!)
        var auDollars: Float = 0
        var auEuro: Float = 0
        var auRubles: Float = 0
        
        if sender.tag == 1
        {
            rbtnUS.isSelected = true
            rbtnEuro.isSelected = false
            rbtnPound.isSelected = false
            let euRate: Float = 0.88
            auEuro = (itemCost!*euRate)
            let ruRate: Float = 74
            auRubles = (itemCost!*ruRate)
            lblDLCost.text = String(txtItemPrice.text!)
            lblEuroCost.text = String(auEuro)
            lblRublesCost.text = String(auRubles)
        }
        else if sender.tag == 2
        {
            rbtnUS.isSelected = false
            rbtnEuro.isSelected = true
            rbtnPound.isSelected = false
            let usRate: Float = 1.14
            auDollars = (itemCost!*usRate)
            let ruRate: Float = 79
            auRubles = (itemCost!*ruRate)
            lblDLCost.text = String(auDollars)
            lblEuroCost.text = String(txtItemPrice.text!)
            lblRublesCost.text = String(auRubles)
        }
        else if sender.tag == 3
        {
            rbtnUS.isSelected = false
            rbtnEuro.isSelected = false
            rbtnPound.isSelected = true
            let usRate: Float = 0.0135
            auDollars = (itemCost!*usRate)
            let euRate: Float = 0.0128
            auEuro = (itemCost!*euRate)
            lblRublesCost.text = String(txtItemPrice.text!)
            lblDLCost.text = String(auDollars)
            lblEuroCost.text = String(auEuro)
        }
        
        
        
    }
    

}

