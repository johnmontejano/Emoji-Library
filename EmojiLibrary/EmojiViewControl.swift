//
//  EmojiViewControl.swift
//  EmojiLibrary
//
//  Created by John Montejano on 9/1/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class EmojiViewControl: UIViewController {
var emoji = Emoji()
    @IBOutlet weak var emojiText: UILabel!
    @IBOutlet weak var birthdateLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiText.text = emoji.emojiString
        birthdateLabel.text = "birth year: \(emoji.birthYear)"
        categoryLabel.text =  "Category: \(emoji.category)"
        definitionLabel.text = "Definition: \(emoji.definition)"
        
        }


    }

     func didReceiveMemoryWarning() {
       //super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


