//
//  ViewController.swift
//  DiceGame
//
//  Created by Hertz on 7/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    // leftDiceImageView 이미지 변수
    @IBOutlet weak var leftDiceImageView: UIImageView!
    
    // rightDiceImageView 이미지 변수
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    // 주사위 데이터 바구니 배열 생성
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        // 주사위 랜덤 출력후 leftDiceImageView 에 표시
        leftDiceImageView.image = diceArray.randomElement()
        // 주사위 랜덤 출력후 rightDiceImageView 에 표시
        rightDiceImageView.image = diceArray.randomElement()
        
    }
    
    
    

}

