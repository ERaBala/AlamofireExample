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

    var preArrayValue = NSMutableDictionary?()
    var newArray: Array<String> = []
    var jsonArray:NSMutableArray?
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var MailLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
/*      This is Reference
         
        print("\(preArrayValue)")
        self.newArray.append(preArrayValue! as! String)
        print("****************************************")
        let response = preArrayValue as NSArray
        print(response)
        print(preArrayValue!.valueForKey("id") as? Int)
        let string = response["buskerName"] as? [[String: AnyObject]]
        print(preArrayValue!.valueForKey("buskerName") as? String)        
         
*/

        
        if preArrayValue != nil {

            let id : Int = (preArrayValue!.valueForKey("id") as? Int)!
            
            self.NameLabel.text = preArrayValue!.valueForKey("buskerName") as? String
            self.idLabel.text = String(id)
            self.MailLabel.text = preArrayValue!.valueForKey("buskermail") as? String
            self.locationLabel.text = preArrayValue!.valueForKey("location") as? String
            
            let url = NSURL(string:(preArrayValue!.valueForKey("sliderImg") as? String)!)
            let data = NSData(contentsOfURL:url!)
            self.imageView.image = UIImage(data:data!)
            
        }
    }
}


//      election manifest
//      sliderImg (image),buskerName, location, distance, buskerinfo, buskermail ,id
