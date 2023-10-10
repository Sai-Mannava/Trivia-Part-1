//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Sai Mannava on 10/9/23.
//

import UIKit

class TriviaViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var dLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var sectionLabel: UILabel!
    private var questions = [questionBank]()
    private var selectedQIndex = 0 //
    override func viewDidLoad() {
        super.viewDidLoad()
        questions = createMockData()
        addGradient()
        configure(with: questions[selectedQIndex]) // configure the UI to show the first mock data
        }
    
    
    
    private func createMockData() -> [questionBank] {

        let mockData1 = questionBank(section: .Action,
                question: .A,
                answerA: .A,
                answerB: .A,
                answerC: .A,
                answerD: .A)
        let mockData2 = questionBank(section: .Comedy,
            question: .B,
            answerA: .B,
            answerB: .B,
            answerC: .B,
            answerD: .B)
        let mockData3 = questionBank(section: .Horror,
            question: .C,
            answerA: .C,
            answerB: .C,
            answerC: .C,
            answerD: .C)
        let mockData4 = questionBank(section: .End,
            question: .D,
            answerA: .C,
            answerB: .C,
            answerC: .C,
            answerD: .C)
            return [mockData1, mockData2, mockData3,mockData4]
        }
      private func configure(with fillers: questionBank) {
          numberLabel.text = "Q " + String(selectedQIndex+1) + "/3"
        sectionLabel.text = fillers.section.description
        questionLabel.text = fillers.question.description
        aLabel.text =
          fillers.answerA.description
        bLabel.text =
          fillers.answerB.description
        cLabel.text =
          fillers.answerC.description
        dLabel.text =
          fillers.answerD.description
      }
    
    @IBAction func answerA(_ sender: UIButton) {
        selectedQIndex = min(questions.count - 1, selectedQIndex + 1) // don't go lower than 0 index
            configure(with: questions[selectedQIndex])
    }
    
    @IBAction func answerB(_ sender: UIButton) {
        selectedQIndex = min(questions.count - 1, selectedQIndex + 1) // don't go lower than 0 index
            configure(with: questions[selectedQIndex])
    }
    
    @IBAction func answerC(_ sender: UIButton) {
        selectedQIndex = min(questions.count - 1, selectedQIndex + 1) // don't go lower than 0 index
            configure(with: questions[selectedQIndex])
    }
    
    @IBAction func answerD(_ sender: UIButton) {
        selectedQIndex = min(questions.count - 1, selectedQIndex + 1) // don't go lower than 0 index
            configure(with: questions[selectedQIndex])
    }
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.54, green: 0.88, blue: 0.99, alpha: 1.00).cgColor,
                                UIColor(red: 0.51, green: 0.81, blue: 0.97, alpha: 1.00).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
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
