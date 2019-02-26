//
//  ViewController.swift
//  window-shopper
//
//  Created by Lukas Holmberg on 2019-02-22.
//  Copyright © 2019 Lukas Holmberg. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var timmar: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Kalkylera", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        totalAmount.isHidden = true
        timmar.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                totalAmount.isHidden = false
                timmar.isHidden = false
                totalAmount.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func rensaBtn(_ sender: Any) {
        totalAmount.isHidden = true
        timmar.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

