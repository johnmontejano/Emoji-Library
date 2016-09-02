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
    var emojis = ["💤", "💯", "🇲🇽", "🌲", "😁", "💯", "😊"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var favSports = ["dude"]
        
        emojiTableVIew.dataSource = self
        emojiTableVIew.delegate = self
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
       return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let emoji = emojis[indexPath.row]
        
performSegueWithIdentifier("PassController", sender: emoji)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print(sender)

        let View = segue.destinationViewController as! EmojiViewControl
        View.emoji = sender as! String
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

