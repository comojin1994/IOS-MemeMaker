//
//  ViewController.swift
//  memeMaker
//
//  Created by SungJin Kim on 2020/12/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentTop: UISegmentedControl!
    @IBOutlet weak var segmentBottom: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var puppyImage: UIImageView!
    
    var topSegmentIndex: Int = 0
    var bottomSegmentIndex: Int = 0
    let imageList = [["power", "flower", "sleep"],
                     ["fancy", "automobile", "drink"],
                     ["fool", "foodkiller", "eater"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLabel.text = "여섯가지 버튼중"
        puppyImage.image = UIImage(named: "main")
        bottomLabel.text = "위 아래 한개씩 골라보세요!!!"
        segmentTop.layer.zPosition = 999
        segmentBottom.layer.zPosition = 998
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentTopChange(_ sender: Any) {
        topSegmentIndex = segmentTop.selectedSegmentIndex
        if topSegmentIndex == 0 {
            topLabel.text = "꽃보다 복숭복숭"
        } else if topSegmentIndex == 1 {
            topLabel.text = "끄어 취한다복숭"
        } else {
            topLabel.text = "다 내꺼 먹지마 복숭"
        }
        print("LOG >>> \(topSegmentIndex), \(bottomSegmentIndex)")
        puppyImage.image = UIImage(named: imageList[topSegmentIndex][bottomSegmentIndex])
    }
    @IBAction func segmentBottomChange(_ sender: Any) {
        bottomSegmentIndex = segmentBottom.selectedSegmentIndex
        if bottomSegmentIndex == 0 {
            bottomLabel.text = "바복숭"
        } else if bottomSegmentIndex == 1 {
            bottomLabel.text = "쫌 탄다복숭"
        } else {
            bottomLabel.text = "잠잔다복숭"
        }
        print("LOG >>> \(topSegmentIndex), \(bottomSegmentIndex)")
        puppyImage.image = UIImage(named: imageList[topSegmentIndex][bottomSegmentIndex])
    }
}

