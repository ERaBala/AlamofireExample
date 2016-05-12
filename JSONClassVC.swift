//
//  JSONClassVC.swift
//  AlamofireExample
//
//  Created by User on 10/05/16.
//  Copyright © 2016 user. All rights reserved.
//

import UIKit
import Alamofire

class JSONClassVC: UIViewController {

    var preArrayValue = []
    var newArray: Array<String> = []
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var MailLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      print("\(preArrayValue)")
        
        print("****************************************")
        let response = preArrayValue as NSArray
        print(response)
        
        
//      let string = response["buskerName"] as? [[String: AnyObject]]
        print(preArrayValue.valueForKey("buskerName") as? String)
        self.NameLabel.text = preArrayValue.valueForKey("buskerName") as? String
        self.idLabel.text = preArrayValue.valueForKey("id") as? String
        
    }
}


//      election manifest
//      sliderImg (image),buskerName, location, distance, buskerinfo, buskermail ,id
