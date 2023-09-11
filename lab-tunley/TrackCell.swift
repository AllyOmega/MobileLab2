//
//  TrackCell.swift
//  lab-tunley
//
//  Created by William Donahue on 9/6/23.
//

import UIKit
import Nuke


class TrackCell: UITableViewCell {

    @IBOutlet weak var trackImageView: UIImageView!
  
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var trackArtistLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
        }
    // Configure the view for the selected state
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName
        trackArtistLabel.text = track.artistName
        
        Nuke.loadImage(with: (track.artworkUrl100), into: trackImageView)
    }

}
