import UIKit

class BaseViewController: UIViewController {


    override func loadView() {
        print("BaseViewController ====> ", #function) // 왜 호출이 안되지?
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        print("BaseViewController ====> ", #function)
    }
        
}
