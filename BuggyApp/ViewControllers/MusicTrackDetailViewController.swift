//
//  MusicTrackDetailViewController.swift
//  BuggyApp
//
//  Created by Sakarn Limnitikarn on 2/7/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import UIKit

class MusicTrackDetailViewController: UIViewController {
  
  var track: Track?
  
  @IBOutlet weak var trackLabel: UILabel!
  @IBOutlet weak var artworkImageView: UIImageView!
  @IBOutlet weak var albumLabel: UILabel!
  @IBOutlet weak var releaseDateLabel: UILabel!
  @IBOutlet weak var genreLabel: UILabel!
  @IBOutlet weak var trackPriceLabel: UILabel!
  @IBOutlet weak var collectionPriceLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
  }
  
  func setupUI() {
    guard let track = track else { return }
    title = track.trackName
    trackLabel.text = track.trackName
    artworkImageView.kf.setImage(with: URL(string: track.artworkUrl))
    let dateFormatter = ISO8601DateFormatter()
    dateFormatter.formatOptions = [.withFullDate,
                                   .withDashSeparatorInDate]
    let releaseDate =  dateFormatter.date(from: track.releaseDate)
    releaseDateLabel.text = dateFormatter.string(from: releaseDate!)
    genreLabel.text = track.primaryGenreName
    trackPriceLabel.text = "\(track.trackPrice) \(track.currency)"
    collectionPriceLabel.text = "\(track.collectionPrice) \(track.currency)"
  }
  
}
