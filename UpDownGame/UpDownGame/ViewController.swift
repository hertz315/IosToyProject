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
    // 내가 선택한 숫자
    //var myChoiceNumber = 5
    
    
    
    // 앱이 실행될때 처음 화면에 그려지는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 메인레이블 에 선택하세요 표시
        // 숫자레이블 "" 표시
        // 컴퓨터가 랜덤으로 숫자 선택 후 저장
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
        
    }

    @IBAction func numberButtonTapped(_ sender: UIButton) {
        // 숫자 선택하면 숫자 데이터 저장
        // 숫자 데이터 숫자레이블에 표시
        guard let myChoiceNumber = sender.currentTitle else { return }
        numberLabel.text = myChoiceNumber
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
        // 내가 버튼 눌룬 숫자와 컴퓨터가 랜덤으로 선택한 숫자를 비교해서
        // 메인 레이블에 Bingo/Up/Down 표시
        // 맞출때 까지 반복
            if Int(numberLabel.text!)! == comChoiceNumber {
                mainLabel.text = "⭐️BINGO⭐️"
            } else if Int(numberLabel.text!)! < comChoiceNumber {
                mainLabel.text = "UP"
            } else {
                mainLabel.text = "DOWN"
            }
    }
    
    
    
    

}

