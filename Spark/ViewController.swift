//
//  ViewController.swift
//  Spark
//
//  Created by Noirozr on 15/5/26.
//  Copyright (c) 2015年 Yongjia Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        let session = NSURLSession.sharedSession()
        let request = NSURLRequest(URL: NSURL(string: "http://pingwest.com")!)
        let task = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            let string = NSString(data: data, encoding: NSUTF8StringEncoding)
            println(string)
        })
        task.resume()
    }

}

