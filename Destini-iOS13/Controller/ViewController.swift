import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        storyBrain.treatAnswer(userChoice)
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getCurrentStoryTitle()
        choice1Button.setTitle(storyBrain.getCurrentChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getCurrentChoice2(), for: .normal)
    }
}

