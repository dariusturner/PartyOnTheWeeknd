//
//  WeekndCell.swift
//  PartyOnTheWeeknd
//
//  Created by Darius Turner on 1/12/17.
//  Copyright © 2017 MTEnterprise. All rights reserved.
//

import UIKit

class WeekndCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    func updateUI(weeknd1: Weeknd1) {
        videoTitle.text = weeknd1.videoTitle
        
        let url = URL(string: weeknd1.imageUrl)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handle the error
            }
        }
    }

}
