//
//  ViewController.swift
//  BackDataPassinUsingClosure
//
//  Created by Pooja's MacBook Pro on 19/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var id1: UILabel!
    @IBOutlet weak var add1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pushToVc2(_ sender: Any) {
        
        if let Vc = self.storyboard?.instantiateViewController(identifier: "ViewController2") as? ViewController2{
            Vc.closureVC2 = {updateId,updateName,updateadd in
                self.id1?.text = updateId
                self.name1?.text = updateName
                self.add1?.text = updateadd
            }
            self.navigationController?.pushViewController(Vc, animated: true)
        }
    }
    
}

