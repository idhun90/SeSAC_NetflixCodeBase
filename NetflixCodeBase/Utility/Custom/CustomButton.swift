import UIKit

class BasicButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton(title: String, State: UIControl.State, tintColor: UIColor, fontSize: CGFloat, fontweight: UIFont.Weight) {
        self.tintColor = tintColor
        self.setTitle(title, for: State)
        self.titleLabel?.font = .systemFont(ofSize: fontSize, weight: fontweight)
    }
    
    func setupButtonIos15(type: UIButton.Configuration, image: String, title: String) {
        var configuration = type
        configuration.image = UIImage(systemName: image)
        configuration.imagePadding = 15
        configuration.imagePlacement = .top
        configuration.title = title
        configuration.buttonSize = .medium
        configuration.baseBackgroundColor = .white
//        let view = UIButton(configuration: configuration, primaryAction: nil)
        
    }
}
