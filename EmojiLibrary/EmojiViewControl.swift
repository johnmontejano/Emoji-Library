//
//  EmojiViewControl.swift
//  EmojiLibrary
//
//  Created by John Montejano on 9/1/16.
//  Copyright © 2016 John Montejano. All rights reserved.
//

import UIKit

class EmojiViewControl: UIViewController {
var emoji = "no emoji"
    @IBOutlet weak var emojiText: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
emojiText.text = emoji
 definitionLabel.text = "dude"
        if emoji == "💯" {
            definitionLabel.text = "This is the 100 emoji (used by teens)"
        }
        if emoji == "💤"{
        definitionLabel.text = "Im sleepy not right now"
        }
        if emoji == "🇲🇽"{
        definitionLabel.text = "Mexican Flag"
        }
        if emoji == "🌲"{
            definitionLabel.text = "I think we are ready for Xmas"
        }
        if emoji == "😊"{
            definitionLabel.text = "I am Happy!!!"
            
        }
        if emoji == "😁"{
            definitionLabel.text = "My teeth hurt"
        }


print(emoji)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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

}
