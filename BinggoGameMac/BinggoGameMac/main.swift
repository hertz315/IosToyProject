//
//  main.swift
//  BinggoGameMac
//
//  Created by Hertz on 7/8/22.
//

import Foundation

var myChoice: Int = 0
let comChoiceInt = Int.random(in: 1...100)

while true {
    
    var userInput = readLine()
    
    if let input = userInput {
        if let number =  Int(input){
            
            myChoice = number
            
        }
        
        if comChoiceInt == myChoice {
            print("BINGGO")
            break
        } else if comChoiceInt > myChoice {
            print("UP")
        } else {
            print("DOWN")
        }
    }
}
