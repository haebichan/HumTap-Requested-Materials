//
//  ViewController.swift
//  LyricGen
//
//  Created by Haebichan Jung on 9/12/18.
//  Copyright © 2018 Haebichan Jung. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBAction func makeMusicButtonPressed(_ sender: Any) {
        print("Button Pressed")
        self.performSegue(withIdentifier: "MusicViewSegue", sender: self)
    }
    
    
    
    
    @IBAction func nextViewButtonPressed(_ sender: Any) {
        print("Button Pressed")
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




//@IBOutlet weak var label: UILabel!
//@IBOutlet weak var pickerView: UIPickerView!
//
//let musicians = ["Adele","Zedd","Avicii"]
//
//func numberOfComponents(in pickerView: UIPickerView) -> Int {
//    return 1
//}
//
//func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//    return musicians[row]
//}
//
//func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//    return musicians.count
//}
//
//
//func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//    label.text = musicians[row]
//}
//    
