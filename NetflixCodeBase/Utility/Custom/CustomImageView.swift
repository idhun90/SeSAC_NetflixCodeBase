import UIKit

class CustomImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override init(image: UIImage?) {
        super.init(image: image)
        setupImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupImageView() {
        self.frame.size.width = 125
        self.frame.size.height = 125
        
        self.layer.borderColor = UIColor.systemGray6.cgColor
        self.layer.borderWidth = 3
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = true
        self.contentMode = .scaleAspectFill
        print("호출됐어요 커스텀 이미지뷰")
    }
}
