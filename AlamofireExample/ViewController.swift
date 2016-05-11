//
//  ViewController.swift
//  AlamofireExample
//
//  Created by User on 09/05/16.
//  Copyright © 2016 user. All rights reserved.
//
//  https://api.getaddress.io/v2/uk/sw1a2aa?api-key=wG5GaiVtwkSI1CUjEeUTlw4144
//


import UIKit
import Alamofire


class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var TableVieq: UITableView!
    var objects =  [String: AnyObject]()
    var jsonArray:NSMutableArray?
    var newArray: Array<String> = []

    lazy var data = NSMutableData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.TableVieq.dataSource = self
        self.TableVieq.delegate = self

        let  url =  NSURL(string:"http://yourUrl.com")
        let parameters = ["Latitude": "bar"]


        Alamofire.request(.POST, url!, parameters: parameters, encoding:.JSON).responseJSON
            { response in switch response.result {
            case .Success(let JSON):
                print("Success with JSON: \(JSON)")
                
//                let response = JSON as! NSArray
                if let JSON = response.result.value {
                    self.jsonArray = JSON as? NSMutableArray
                    for item in self.jsonArray! {
                        print(item["id"]!)
                        let string = item["buskerName"]!
                        print("String is \(string!)")
                        
                        self.newArray.append(string! as! String)
                    }
                    
                    print("New array is \(self.newArray)")
                    
                    self.TableVieq.reloadData()
                }
                            case .Failure(let error):
                print("Request failed with error: \(error)")
                }
        }
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.newArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = self.newArray[indexPath.row]
        return cell
    }
    
}

/*
    http://date.jsontest.com/
 https://httpbin.org/get
*/


//      sliderImg (image),buskerName, location, distance, buskerinfo, buskermail ,id