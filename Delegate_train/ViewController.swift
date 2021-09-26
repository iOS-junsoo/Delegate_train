// [Delegate x]

//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var enterLabel: UILabel!
//    @IBOutlet weak var textField: UITextField!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//    @IBAction func buttonClicked(_ sender: UIButton) {
//        enterLabel.text = textField.text;
//    }
//
//
//}

// [Delegate o]

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //UITextFieldDelegate '채택'

    @IBOutlet weak var enterLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        //위임자(대리자)가 누구인지 알려주는 과정
        //"너(textField)한테 이벤트가 발생하면 프로토콜에 따라 내(ViewController)가 너(textField)에게 응답을 줄게."
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            enterLabel.text = textField.text
            return true
    }

    

}

