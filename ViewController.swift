//
//  ViewController.swift
//  MadLibs
//
//  Created by jmk121 on 2/19/16.
//  Copyright © 2016 jmk121. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var noun1txt: UITextField!
    
    
    @IBOutlet var noun2txt: UITextField!
    
    
    @IBOutlet var verb1txt: UITextField!
    
    
    @IBOutlet var verb2txt: UITextField!
    
    var n1 : String = ""
    
     var n2 : String = ""
    
     var v1 : String = ""
     var v2 : String = ""
    
    let input = "Jack and Jill went up the hill to fetch a pail of water"
    let options: NSLinguisticTaggerOptions = [.OmitWhitespace, .OmitPunctuation, .JoinNames]
    let schemes = NSLinguisticTagger.availableTagSchemesForLanguage("en")
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        noun1txt.text = n1;
        noun2txt.text = n2
        verb1txt.text = v1
        verb2txt.text = v2
         let tagger = NSLinguisticTagger(tagSchemes: schemes, options: Int(options.rawValue))
    tagger.string = input
        
    tagger.enumerateTagsInRange(NSMakeRange(0, (input as NSString).length), scheme: NSLinguisticTagSchemeNameTypeOrLexicalClass, options: options) { (tag, tokenRange, _, _) in
    let token = (self.input as NSString).substringWithRange(tokenRange)
//        
//        
        print("\(token) : \(tag)")
      
        
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

