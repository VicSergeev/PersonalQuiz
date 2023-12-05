//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Vic on 04.12.2023.
//

import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet var resultIconLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    var answersChosen: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculateResult()
    }
    
    
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
}

extension ResultViewController {
    func calculateResult() {
        var animalCount: [Animal: Int] = [:]
        
        for answer in answersChosen {
            if let count = animalCount[answer.animal] {
                animalCount[answer.animal] = count + 1
            } else {
                animalCount[answer.animal] = 1
            }
        }
        
        var mostCommonAnimal: Animal?
        var highestCount = 0
        
        for (type, count) in animalCount {
            if count > highestCount {
                mostCommonAnimal = type
                highestCount = count
            }
        }
        
        if let result = mostCommonAnimal {
            resultIconLabel.text = "\(result.rawValue)"
            resultDefinitionLabel.text = result.definition
        }
    }
            
}
