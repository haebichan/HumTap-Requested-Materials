//
//  SecondScreenViewController.swift
//  LyricGen
//
//  Created by Haebichan Jung on 9/12/18.
//  Copyright © 2018 Haebichan Jung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let musicians = ["Select","Adele","Zedd","Avicii"]
    var selectedMusician = ""
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return musicians[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return musicians.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedMusician = musicians[row]
        label.text = selectedMusician
    }
    
    
    @IBAction func musicianButtonPressed(_ sender: Any) {
        print("Musician Button Pressed")
        self.performSegue(withIdentifier: "ThirdViewSegue", sender: self)
        
    }
    @IBOutlet weak var textField: UIPickerView!
    
    @IBAction func backButtonPressed(_ sender: Any) {
        print("Back Button Pressed")
        self.performSegue(withIdentifier: "HomeViewSegue", sender: self)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextViewController = segue.destination as? ThirdViewController {
            nextViewController.selectedMusician = self.selectedMusician
        }
    }
    
}

