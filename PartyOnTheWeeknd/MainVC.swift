//
//  ViewController.swift
//  PartyOnTheWeeknd
//
//  Created by Darius Turner on 1/12/17.
//  Copyright © 2017 MTEnterprise. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var weeknds = [Weeknd1]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p1 = Weeknd1(imageUrl: "https://284fc2d5f6f33a52cd9f-ce476c3c56a27f320262daffab84f1af.ssl.cf3.rackcdn.com/artwork_57e357af9ef7c_400x400bb.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/34Na4j8AVgA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Starboy")
        
        let p2 = Weeknd1(imageUrl: "https://upload.wikimedia.org/wikipedia/en/1/15/The-Weeknd-In-the-Night-2015.png", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2iFa5We6zqw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "In The Night (Audio)")
        
        let p3 = Weeknd1(imageUrl: "http://www.wepluggoodmusic.com/wp-content/uploads/2012/12/the-weeknd-trilogy-album-cover.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/O1OTWCd40bc?list=PLiscJKD_ybuLM54NHxBbHvXfQrJERtY6u\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Wicked Games")
        
        let p4 = Weeknd1(imageUrl: "http://exclaim.ca/images/TheWeeknd_Echoes.jpg", videoUrl: "<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/NpLoB9w1we0?list=PLChqJr1XONgYa3AdyCuw8wC-u_zJddCst\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Same Old Song")
        
        let p5 = Weeknd1(imageUrl: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRohpWxroPVzPtmE2_P2Ed0lSyiJlPLza-AZwsSLPH2PlF7oMbC", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/waU75jdUnYw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Earned It")
        
        weeknds.append(p1)
        weeknds.append(p2)
        weeknds.append(p3)
        weeknds.append(p4)
        weeknds.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WeekndCell", for: indexPath) as? WeekndCell {
            let weeknd1 = weeknds[indexPath.row]
            cell.updateUI(weeknd1: weeknd1)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weeknds.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let weeknd1 = weeknds[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: weeknd1)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination =  segue.destination as? VideoVC {
            
            if let song = sender as? Weeknd1 {
                destination.weeknd1 = song
            }
        }
    }

}

