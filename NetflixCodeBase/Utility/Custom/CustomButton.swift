import UIKit

class BasicButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton(title: String, State: UIControl.State, tintColor: UIColor, fontSize: CGFloat, fontweight: UIFont.Weight ) {
        self.tintColor = tintColor
        self.setTitle(title, for: State)
        self.titleLabel?.font = .systemFont(ofSize: fontSize, weight: fontweight)
    }
}
