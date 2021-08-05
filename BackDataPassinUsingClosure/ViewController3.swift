//
//  ViewController3.swift
//  BackDataPassinUsingClosure
//
//  Created by Pooja's MacBook Pro on 19/07/21.
//

import UIKit

class ViewController3: UIViewController {
    
    var closureVC3 :((String,String,String)->())?
    
    @IBOutlet weak var id: UITextField!
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var add: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func popVc2() {
        
        if let Vc = self.storyboard?.instantiateViewController(identifier: "ViewController2") as? ViewController2{
        
            if let updateId = id?.text,
               let updateAdd = add?.text,
               let updatename = name?.text{
                closureVC3?(updatename,updateId,updateAdd)
                print(updateId)
                
            }
            self.navigationController?.popViewController(animated: true)
            }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
