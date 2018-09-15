//
//  ThirdScreenViewController.swift
//  LyricGen
//
//  Created by Haebichan Jung on 9/12/18.
//  Copyright © 2018 Haebichan Jung. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController {
    @IBOutlet weak var background: UIImageView!
    
    let allFirstWords =  ["What", "Sexy", "Flying", "Back", "Theres", "Paper", "Go", "Youve", "Worn", "Somehow", "Yet", "Whats", "Where", "Get", "Love", "Feeling", "Got", "Underneath", "Somewhere", "Tired", "Only", "Whatever", "Know", "We", "Reach", "So", "Win", "Regardless", "Doesnt", "That", "Like", "Can", "Ill", "Just", "Without", "With", "Dancing", "Why", "Lying", "Black", "Youd", "Watched", "Now", "Faded", "For", "The", "Or", "Wherever", "As", "Forgive", "Its", "Baby", "Night", "I", "You", "Cant", "Never", "Hold", "It", "Thats", "They", "Nothing", "Dont", "Sensitive", "Is", "Because", "Into", "Lose", "This", "From", "No", "Bet", "Until", "Close", "Lost", "Under", "When", "Finding", "Take", "Breathing", "Living", "All", "Escape", "Trust", "Even", "Fight", "Higher", "Let", "Are", "Of", "Put", "Anything", "Tell", "Oh", "Soak", "Come", "Straight", "Opening", "Our", "Hope", "In", "Turn", "Id", "Daisy", "Maybe", "Push", "Chasing", "Every", "Whisper", "Ignite", "Little", "Healing", "Wrapped", "And", "Show", "Addicted", "My", "Starting", "But", "Were", "Broken", "Hide", "Holding", "Feel", "Watch", "Weve", "Stay", "Alive", "Cause", "Remember", "Well", "If", "Looking", "Yeah", "Down", "Face", "Right", "Guess", "Fall", "How", "Your", "World", "Swimming", "Upon", "A", "Girl", "On", "To", "Still"]
    
    var searchWords = [String]()
    var searching = false
    var selectedMusician = ""
    
    
    @IBOutlet weak var create: UILabel!
    @IBOutlet weak var lyrics: UILabel!
    @IBOutlet weak var musician: UILabel!
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "LyricsGeneratedSegue", sender: self)
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        print("Back Button Pressed")
        self.performSegue(withIdentifier: "SecondViewBackSegue", sender: self)
    }
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var tbView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.musician.text = selectedMusician
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


extension ThirdViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchWords.count
        } else {
            return allFirstWords.count
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if searching {
            cell?.textLabel?.text = searchWords[indexPath.row]
        } else {
            cell?.textLabel?.text = allFirstWords[indexPath.row]
            
        }
        return cell!
    }
    
}


extension ThirdViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchWords = allFirstWords.filter({$0.prefix(searchText.count) == searchText})
        searching = true
        tbView.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tbView.reloadData()
        
    }
 
}
