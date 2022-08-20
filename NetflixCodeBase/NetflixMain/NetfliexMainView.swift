import UIKit
import SnapKit

class NetfliexMainView: BaseView {
    
    //MARK: - 상단 뷰 버튼
    let nButton: BasicButton = {
        let view = BasicButton()
        view.setupButton(title: "N", State: .normal, tintColor: .white, fontSize: 30, fontweight: .bold)
        return view
    }()
    
    let tvProgramButton: BasicButton = {
       let view = BasicButton()
        view.setupButton(title: "TV프로그램", State: .normal, tintColor: .white, fontSize: 15, fontweight: .bold)
        return view
    }()
    
    let movieButton: BasicButton = {
        let view = BasicButton()
        view.setupButton(title: "영화", State: .normal, tintColor: .white, fontSize: 15, fontweight: .bold)
        return view
    }()
    
    let contentButton: BasicButton = {
       let view = BasicButton()
        view.setupButton(title: "내가 찜한 콘텐츠", State: .normal, tintColor: .white, fontSize: 15, fontweight: .bold)
        return view
    }()
    
    let buttonStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fill
        view.spacing = 25
        return view
    }()
    
    // MARK: - 중앙 배경 및 버튼
    let backgroundImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "어벤져스엔드게임")
        view.contentMode = .scaleAspectFill
        view.alpha = 0.5
        return view
    }()
    
    let myContentButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.imagePadding = 5
        configuration.image = UIImage(systemName: "checkmark")
        configuration.imagePlacement = .top
        configuration.title = "내가 찜한 컨텐츠"
        configuration.buttonSize = .small
        configuration.baseForegroundColor = .white
//        configuration.background.backgroundColor = .brown
//        view.setupButtonIos15(type: .plain(), image: "checkmark", title: "내가 찜한 컨텐츠")
        let view = UIButton(configuration: configuration, primaryAction: nil)
        return view
    }()
    
    let playButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.imagePadding = 5
        configuration.imagePlacement = .leading
        configuration.image = UIImage(systemName: "play.fill")
        configuration.title = "재생"
        configuration.buttonSize = .small
        configuration.baseBackgroundColor = .systemGray6
        configuration.baseForegroundColor = .black
        let view = UIButton(configuration: configuration, primaryAction: nil)
        return view
    }()
    
    let infoButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.imagePadding = 5
        configuration.image = UIImage(systemName: "info.circle")
        configuration.imagePlacement = .top
        configuration.title = "정보"
        configuration.buttonSize = .small
        configuration.baseForegroundColor = .white
//        configuration.background.backgroundColor = .brown
        let view = UIButton(configuration: configuration, primaryAction: nil)
        return view
    }()
    
    let midStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fillEqually
        view.spacing = 15
        return view
    }()
    
    
    // MARK: - 하단 레이블 및 뷰 버튼
    
    let previewLabel: BasicButton = {
        let view = BasicButton()
        view.setupButton(title: "미리보기", State: .normal, tintColor: .white, fontSize: 20, fontweight: .bold)
        return view
    }()
    
    let previewImage1: CustomImageView = {
        var view = CustomImageView(image: UIImage(named: "7번방의선물"))
        print("호출됐어요 이미지뷰1")
        return view
    }()

    let previewImage2: CustomImageView = {
        let view = CustomImageView(image: UIImage(named: "아바타"))
        return view
    }()

    let previewImage3: CustomImageView = {
        let view = CustomImageView(image: UIImage(named: "택시운전사"))
        return view
    }()
    
    let imageViewStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fillEqually
        view.spacing = 15
        view.backgroundColor = .clear
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("NetflixMainView ====> ", #function)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - configureUI
    override func configureUI() {
        
        [backgroundImageView, nButton, buttonStackView, imageViewStackView, previewLabel, midStackView].forEach {
            self.addSubview($0)
        }
        
        
        
        [tvProgramButton, movieButton, contentButton].forEach {
            buttonStackView.addArrangedSubview($0)
        }
        
        [myContentButton, playButton, infoButton].forEach {
            midStackView.addArrangedSubview($0)
        }
        
        [previewImage1, previewImage2, previewImage3].forEach {
            imageViewStackView.addArrangedSubview($0)
        }
        
    }
    
    //MARK: - constaitns
    override func setconstaints() {
        print("제약조건")
        
        // 상단
        buttonStackView.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top).inset(10)
            $0.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).inset(10)
        }
        
        nButton.snp.makeConstraints {
            $0.width.height.equalTo(44)
            $0.centerY.equalTo(buttonStackView)
            $0.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).inset(10)
        }
        
        // 중앙
//        myContentButton.snp.makeConstraints {
//            $0.bottom.equalTo(previewLabel.snp.top).offset(-20)
//            $0.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(10)
//            $0.width.equalTo(120)
//            $0.height.equalTo(60)
//        }
//
//        playButton.snp.makeConstraints {
//            $0.centerY.equalTo(myContentButton)
//            $0.centerX.equalToSuperview()
//            $0.width.equalTo(120)
//            $0.height.equalTo(44)
//        }
//
//        infoButton.snp.makeConstraints {
//            $0.bottom.equalTo(previewLabel.snp.top).offset(-20)
//            $0.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).offset(10)
//            $0.width.equalTo(120)
//            $0.height.equalTo(60)
//        }
        
        backgroundImageView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.bottom.equalTo(midStackView.snp.bottom).offset(60)
        }
        
        midStackView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.leading.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().inset(10)
            $0.bottom.equalTo(previewLabel.snp.top).offset(-20)
            $0.height.equalTo(44)
            
        }
        
        //하단
        previewLabel.snp.makeConstraints {
            $0.leading.equalTo(imageViewStackView.snp.leading)
            $0.bottom.equalTo(imageViewStackView.snp.top).offset(-10)
        }
        
        previewImage1.snp.makeConstraints {
            $0.width.height.equalTo(125)
//            $0.leading.equalToSuperview()
//            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).inset(10)
            
        }
        
        previewImage2.snp.makeConstraints {
            $0.width.height.equalTo(125)
//            $0.centerX.equalToSuperview()
//            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).inset(10)
        }
        
        previewImage3.snp.makeConstraints {
            $0.width.height.equalTo(125)
//            $0.trailing.equalToSuperview()
//            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).inset(10)
        }
        
        imageViewStackView.snp.makeConstraints {
//            $0.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
            $0.centerX.equalToSuperview()

        }

    }
}
