//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by Anderson on 4/26/23.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    //Outlets
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var rangedStackView: UIStackView!
    
    // Properties
    var questionIndex = 0
    
    var questions: [Question] = [
        Question(text: "Which food do you like the most?", type: .single, answers: [
            Answer(text: "Steak", type: .dog),
            Answer(text: "Fish", type: .cat),
            Answer(text: "Collard greens", type: .turtle),
            Answer(text: "Carrots", type: .rabbit)
            ]),
        Question(text: "Which activities do you enjoy?", type: .multiple, answers: [
            Answer(text: "Swimming", type: .turtle),
            Answer(text: "Sleeping", type: .cat),
            Answer(text: "Running", type: .dog),
            Answer(text: "Cuddling", type: .rabbit)
        ]),
        Question(text: "How much do you enjoy car rides?", type: .ranged, answers: [
            Answer(text: "I dislike them", type: .cat),
            Answer(text: "I get a little nervous", type: .rabbit),
            Answer(text: "I barely notice them", type: .turtle),
            Answer(text: "I love them", type: .dog)
        ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    func updateUI(){
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true

        navigationItem.title = "Question #\(questionIndex + 1)"

        let currentQuestion = questions[questionIndex]

        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
        
    }
}
