import UIKit
import SnapKit

class NetfliexMainView: BaseView {
    
    let nButton: UIButton = {
        let view = UIButton()
        view.setTitle("N", for: .normal)
        view.setTitleColor(UIColor.white, for: .normal)
        
        return view
    }()
    
    let tvProgramButton: BasicButton = {
       let view = BasicButton()
        view.setupButton(title: "TV프로그램", State: .normal, tintColor: .white, fontSize: 13, fontweight: .regular)
        return view
    }()
    
    let movieButton: BasicButton = {
        let view = BasicButton()
        view.setupButton(title: "영화", State: .normal, tintColor: .white, fontSize: 13, fontweight: .regular)
        return view
    }()
    
    let contentButton: BasicButton = {
       let view = BasicButton()
        view.setupButton(title: "내가 찜한 콘텐츠", State: .normal, tintColor: .white, fontSize: 13, fontweight: .regular)
        return view
    }()
    
    let buttonStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fill
        view.spacing = 30
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("NetflixMainView ====> ", #function)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        
        [nButton, buttonStackView].forEach {
            self.addSubview($0)
        }
        [tvProgramButton, movieButton, contentButton] .forEach {
            buttonStackView.addArrangedSubview($0)
        }
        
    }
    
    override func setconstaints() {
        
        buttonStackView.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top).inset(20)
            $0.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).inset(20)
        }
        
        nButton.snp.makeConstraints {
            $0.width.height.equalTo(44)
            $0.centerY.equalTo(buttonStackView)
            $0.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).inset(20)
        }
    }
}
