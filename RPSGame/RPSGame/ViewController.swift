//
//  ViewController.swift
//  RPSGame
//
//  Created by Hertz on 7/8/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var computerChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var myChoice: Srp = Srp.rock
    var comChoice: Srp = Srp(rawValue: Int.random(in: 0...2))!
    
    // 앱 실행시 처음 화면에 그려지는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // mainLabel 선택하세요
        mainLabel.text = "⭐️선택하세요⭐️"
        // computerImage 준비 이미지 표시
        computerImage.image = #imageLiteral(resourceName: "ready")
        // myImage 준비 이미지 표시
        myImage.image = #imageLiteral(resourceName: "ready")
        // computerChoiceLabel 준비 레이블 표시
        computerChoiceLabel.text = "준비"
        // myChoiceLabel 준비 레이블 표시
        myChoiceLabel.text = "준비"
    }

    
    @IBAction func srpButtonTapped(_ sender: UIButton) {
        // 가위, 바위, 보 데이터 저장
         
         // 가드렛 바인딩
         guard let title = sender.currentTitle else { return }
         print(title)
         
         switch title {
         case "가위":
             myChoice = Srp.scissors
         case "바위":
             myChoice = Srp.rock
         case "보":
             myChoice = Srp.paper
         default:
             break
         }
    }
    
    
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 컴퓨터가 선택한 이미지 표시
        // 컴퓨터가 선택한 이미지 레이블로 표시
        switch comChoice {
        case .scissors:
            computerImage.image = #imageLiteral(resourceName: "scissors")
            computerChoiceLabel.text = "가위"
        case .rock:
            computerImage.image = #imageLiteral(resourceName: "ready")
            computerChoiceLabel.text = "바위"
        case .paper:
            computerImage.image = #imageLiteral(resourceName: "paper")
            computerChoiceLabel.text = "보"
        }
        // 내가 선택한 이미지 표시
        // 내가 선택한 이미지 레이블로 표시
        switch myChoice {
        case .scissors:
            myImage.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        case .rock:
            myImage.image = UIImage(named: "rock")
            myChoiceLabel.text = "바위"
        case .paper:
            myImage.image = UIImage(named: "paper")
            myChoiceLabel.text = "보"
        }
        
        // 내가 이겼는지 졌는지 비교하여 메인레이블에 이겼습니다 또는 졌습니다 표시
        if myChoice == comChoice {
            mainLabel.text = "비겼습니다"
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "이겼습니다"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼습니다"
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼습니다"
        } else {
            mainLabel.text = "졌습니다"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // mainLabel 선택하세요 표시
        mainLabel.text = "⭐️선택하세요⭐️"
        // computerImage 준비 이미지 표시
        computerImage.image = UIImage(named: "ready")
        // myImage 준비 이미지 표시
        myImage.image = UIImage(named: "ready")
        // computerChoiceLabel 준비 레이블 표시
        computerChoiceLabel.text = "준비"
        // myChoiceLabel 준비 레이블 표시
        myChoiceLabel.text = "준비"
        // 컴퓨터가 다시 랜덤 가위, 바위, 보 데이터 선택하고 저장
        comChoice = Srp(rawValue: Int.random(in: 0...2))!
    }
    

}

