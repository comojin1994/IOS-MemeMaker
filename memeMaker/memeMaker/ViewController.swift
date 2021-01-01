import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topSegment: UISegmentedControl!
    @IBOutlet weak var bottomSegment: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var puppyImg: UIImageView!
    
    var topSegmentIndex: Int = 0
    var bottomSegmentIndex: Int = 0
    let imageList = [["power", "flower", "sleep"],
                     ["fancy", "automobile", "drink"],
                     ["fool", "foodkiller", "eater"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLabel.text = "여섯가지 버튼중"
        bottomLabel.text = "위 아래 한개씩 골라보세요!!!"
        puppyImg.image = UIImage(named: "main")
    }

    @IBAction func topSegmentChange(_ sender: Any) {
        topSegmentIndex = topSegment.selectedSegmentIndex
        refresh()
    }
    
    @IBAction func bottomSegmentChange(_ sender: Any) {
        bottomSegmentIndex = bottomSegment.selectedSegmentIndex
        refresh()
    }
    
    func refresh () {
        if topSegmentIndex == 0 {
            topLabel.text = "꽃보다 복숭복숭"
        } else if topSegmentIndex == 1 {
            topLabel.text = "끄어 취한다복숭"
        } else {
            topLabel.text = "다 내꺼 먹지마 복숭"
        }
        
        if bottomSegmentIndex == 0 {
            bottomLabel.text = "바복숭"
        } else if bottomSegmentIndex == 1 {
            bottomLabel.text = "쫌 탄다복숭"
        } else {
            bottomLabel.text = "잠잔다복숭"
        }
        
        print("LOG >>> \(topSegmentIndex), \(bottomSegmentIndex)")
        puppyImg.image = UIImage(named: imageList[topSegmentIndex][bottomSegmentIndex])
    }
}

