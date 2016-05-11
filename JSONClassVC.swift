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

    var jsonArray:NSMutableArray?
    var newArray: Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(.GET, "https://httpbin.org/get").responseJSON { response in
            print(response.result.value)
            if let JSON = response.result.value {
                
               print(JSON)

            
        }
        
    }

}
}



//      sliderImg (image),buskerName, location, distance, buskerinfo, buskermail ,id
