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
//        print(mainView.imageViewStackView.frame.size.height)
//        print(mainView.imageViewStackView.frame.size.width)
//        print(mainView.imageViewStackView.bounds.height)
//        print(mainView.imageViewStackView.bounds.width)
        print(mainView.previewImage1.frame.size.height)
        print(mainView.previewImage1.frame.size.width)
        print(mainView.previewImage2.frame.size.width)
        print(mainView.previewImage3.frame.size.width)
        print(UIScreen.main.bounds.width)
    }
}
