//
//  VideoVC.swift
//  PartyOnTheWeeknd
//
//  Created by Darius Turner on 1/12/17.
//  Copyright © 2017 MTEnterprise. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _weeknd1: Weeknd1!
    
    var weeknd1: Weeknd1 {
        get {
            return _weeknd1
        } set {
            return _weeknd1 = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLbl.text = weeknd1.videoTitle
        webView.loadHTMLString(weeknd1.videoUrl, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: Actions
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
