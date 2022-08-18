//
//  ViewController.swift
//  SalesTax
//
//  Created by Viponpreet Kaur on 2022-02-08.
//

import UIKit

class ViewController: UIViewController {
//reference to items on visual story board
    @IBOutlet weak var totalPriceLbl: UILabel!
    @IBOutlet weak var salesTaxTxt: UITextField!
    @IBOutlet weak var priceTxt: UITextField!
    override func viewDidLoad() {//called when screen load at first time
        totalPriceLbl.text = " "
        super.viewDidLoad()

    }


    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let tax = Double(salesTaxTxt.text!)!
        let totalTax = price * tax
        let priceTotal = price + totalTax
        totalPriceLbl.text = "$\(priceTotal)"
    }
}

