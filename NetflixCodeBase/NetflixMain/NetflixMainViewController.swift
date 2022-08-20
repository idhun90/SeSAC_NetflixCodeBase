import UIKit

class NetflixMainViewController: BaseViewController {
    
    let mainView = NetfliexMainView()
    
    override func loadView() {
        self.view = mainView
        print("NetflixMainViewController ====> ", #function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NetflixMainViewController ====> ", #function)
    }
}
