//
//  ViewController.swift
//  tip-sy
//
//  Created by Anisha Bhattacharya on 9/12/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("hello")
        
        view.endEditing(true)
    }
    @IBAction func calculatetip(_ sender: Any) {
        //get bill
        let bill=Double(billField.text!) ?? 0
        let tippercent=[0.1,0.18,0.20]
        
        
        
        //calc tip and total
        
        let tip=bill*tippercent[tipcontrol.selectedSegmentIndex];
        let total=bill+tip
        
        
        
        //update tip and total labelstipLabel.text="10.0$"
        
//        tipLabel.text="$\(tip)"
//        totalLabel.text="$\(total)"
        tipLabel.text=String(format: "$%.2f", tip)
        totalLabel.text=String(format: "$%.2f", total)
        
        
        
        
    }
}

