//
//  ViewController.swift
//  UpDownGame
//
//  Created by Hertz on 7/8/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터 랜덤 숫자
    var comChoiceNumber = Int.random(in: 1...10)
    
    // 내가 선택한 숫자를 담는 변수
    var myChoiceNumber: Int = 1
    
    
    
    // 앱이 실행될때 처음 화면에 그려지는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) 숫자 레이블은 "" (빈문자열)
        numberLabel.text = ""
        
    }

    @IBAction func numberButtonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야함
        guard let numString = sender.currentTitle else { return }
        
        // 2) 숫자 레이블이 변하도록 (숫자에 따라)
        numberLabel.text = numString
        
        // 3) 선택한 숫자를 변수에다가 저장 (선택)
        guard let num = Int(numString) else { return }
        myChoiceNumber = num
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 메인레이블 에 선택하세요 표시
        // 숫자레이블 "" 표시
        // 컴퓨터가 랜덤으로 숫자 선택 후 저장
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
        comChoiceNumber = Int.random(in: 1...10)
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP/DOWN/BINGO 표시
        
        if comChoiceNumber > myChoiceNumber {
            mainLabel.text = "UP"
        } else if comChoiceNumber < myChoiceNumber {
            mainLabel.text = "DOWN"
        } else {
            mainLabel.text = "😄BINGO😄"
        }
    }
    
    
    
    

}

