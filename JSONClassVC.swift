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

    var preArrayValue = [AnyObject]()
    
    var newArray: Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//      print(preArrayValue)
        let response = preArrayValue as NSArray
        print(response[1])
        print(response.valueForKey("buskerName") as? NSString)
//           let string = response["buskerName"] as? [[String: AnyObject]]
//         print(<#T##items: Any...##Any#>)
    }
}



//      sliderImg (image),buskerName, location, distance, buskerinfo, buskermail ,id
