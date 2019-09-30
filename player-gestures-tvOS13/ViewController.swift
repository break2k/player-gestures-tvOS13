//
//  ViewController.swift
//  player-gestures-tvOS13
//
//  Created by Vitalij Dadaschjanz on 30.09.19.
//  Copyright © 2019 com.zattoo. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    var playerViewController = AVPlayerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8") else { return }
        let playerItem = AVPlayerItem(asset: AVAsset(url: url), automaticallyLoadedAssetKeys: ["duration", "preferredDisplayCriteria"])
        playerViewController.player = AVPlayer(playerItem: playerItem)

        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapUp))
        tapRecognizer.allowedPressTypes = [NSNumber(value: UIPress.PressType.upArrow.rawValue)]
        playerViewController.view.addGestureRecognizer(tapRecognizer)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        present(playerViewController, animated: false)
    }

    @objc func tapUp() {
        print("tap up")
        playerViewController.view.alpha = playerViewController.view.alpha == 1.0 ? 0.5 : 1.0
    }
}
