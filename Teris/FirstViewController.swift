//
//  FirstViewController.swift
//  Teris
//
//  Created by User23 on 2019/1/4.
//  Copyright © 2019 User21. All rights reserved.
//

import UIKit
import AVFoundation
import NVActivityIndicatorView

class FirstViewController: UIViewController {

    @IBOutlet weak var playButtion: UIButton!
    var audio: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 初始建立 NVActivityIndicatorView
        let activityView = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 150, height: 150), type: .ballScaleRippleMultiple, color: .white)
        activityView.center = self.view.center
        
        // 啟動 NVActivityIndicatorView 動畫
        activityView.startAnimating()
        
        self.view.addSubview(activityView)
        self.view.addSubview(playButtion)
 
        // 將 navigation bar 變透明
        let image = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
        self.navigationController?.navigationBar.shadowImage = image
        
        do{
            let url = Bundle.main.url(forResource: "Sounds/New Super Mario Bros - OverWorld", withExtension:"mp3")
            audio = try AVAudioPlayer(contentsOf: url!)
            audio?.prepareToPlay()
        } catch {
            print("Error")
        }
        audio?.play()
    }
    
    @IBAction func startGame(_ sender: Any) {
        audio?.stop()
    }
    
    @IBAction func unwindSegueBack(segue: UIStoryboardSegue) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
