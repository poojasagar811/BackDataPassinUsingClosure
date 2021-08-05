//
//  ViewController2.swift
//  BackDataPassinUsingClosure
//
//  Created by Pooja's MacBook Pro on 19/07/21.
//

import UIKit

class ViewController2: UIViewController {

    var closureVC2 :((String,String,String)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func push3() {
        if let Vc = self.storyboard?.instantiateViewController(identifier: "ViewController3") as? ViewController3{
            
            Vc.closureVC3 = self.closureVC2
            
            self.navigationController?.pushViewController(Vc, animated: true)
    }
    }
    
    @IBAction func Pop1() {
        if let Vc = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController{
            
            self.navigationController?.popViewController(animated: true)

        }
    }
}
