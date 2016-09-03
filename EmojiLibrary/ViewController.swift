//
//  ViewController.swift
//  EmojiLibrary
//
//  Created by John Montejano on 9/1/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//..

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var emojiTableVIew: UITableView!
    var emojis :[Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var favSports = ["dude"]
        
        emojiTableVIew.dataSource = self
        emojiTableVIew.delegate = self
        emojis = makeEmojiArray()
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.category
       return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let emoji = emojis[indexPath.row]
        
performSegueWithIdentifier("PassController", sender: emoji)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print(sender)

        let View = segue.destinationViewController as! EmojiViewControl
        View.emoji = sender as! Emoji
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray()-> [Emoji]{
        let emoji1 = Emoji()
        emoji1.emojiString = "💤"
        emoji1.category = "Sleep"
        emoji1.birthYear = "2001"
        emoji1.definition = "I am sleepy for a definition"

        let emoji2 = Emoji()
        emoji2.emojiString = "💯"
        emoji2.category = "number"
        emoji2.birthYear = "2001"
        emoji2.definition = "just the number 100"

        let emoji3  = Emoji()
        emoji3.emojiString = "🇲🇽"
        emoji3.category = "Flag"
        emoji3.birthYear = "2001"
        emoji3.definition = "Let's go Mexico"

        let emoji4 = Emoji()
        emoji4.emojiString = "🌲"
        emoji4.category = "Holdiday"
        emoji4.birthYear = "2001"
        emoji4.definition = "It seems to be christmas"
        let emoji5 = Emoji()
        emoji5.emojiString = "😁"
        emoji5.category = "Face Emoji"
        emoji5.birthYear = "2001"
        emoji5.definition = "Their is a test emoji"

        
        let emoji6 = Emoji()
        emoji6.emojiString = "💯"
        emoji6.category = "Number"
        emoji6.birthYear = "2001"
        emoji6.definition = "just the number 100"

        let emoji7 = Emoji()
        emoji7.emojiString = "😊"
        emoji7.category = "Smiley"
        emoji7.birthYear = "2001"
        emoji7.definition = "This emoji is used when happiness strikes"


        
        
    return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7]
//        "💤", "💯", "🇲🇽", "🌲", "😁", "💯", "😊"
    }


}

