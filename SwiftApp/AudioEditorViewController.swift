//
//  File.swift
//  LyricGen
//
//  Created by Haebichan Jung on 9/13/18.
//  Copyright © 2018 Haebichan Jung. All rights reserved.
//

import UIKit

class AudioEditorViewController: UIViewController {
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "recordBackSegue", sender: self)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "GenerateLyricsQuestionSegue", sender: self)
    }
    
}

