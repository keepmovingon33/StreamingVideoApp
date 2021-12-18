//
//  ViewController.swift
//  6-M3U8-StreamingVideo
//
//  Created by sky on 12/18/21.
//

import UIKit
import StreamingKit

class ViewController: UIViewController {
    
    private let videoPlayer = StreamingVideoPlayer()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var greyView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupVideoPlayer()
    }

    private func setupVideoPlayer() {
        videoPlayer.add(to: greyView)
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        guard let text = textField.text, let url = URL(string: text) else { return }
        videoPlayer.play(url: url)
    }
    
    @IBAction func StopButtonTapped(_ sender: UIButton) {
        videoPlayer.pause()
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        textField.text = nil
        videoPlayer.pause()
    }

}

