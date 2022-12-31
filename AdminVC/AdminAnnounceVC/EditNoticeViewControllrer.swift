import UIKit
import SnapKit
import Then

final class EditNoticeViewController: BaseViewController {
    
    private let backUIBarButtonItem = UIBarButtonItem()
    
    private let completeUIButton = UIButton().then {
        $0.setTitle("완료", for: .normal)
        $0.setTitleColor(UIColor(rgb: 0x000000), for: .normal)
        $0.titleLabel?.font = UIFont(name: "Adelle-Bold", size: 20)
        $0.addTarget(self, action: #selector(completedEdit), for: .touchUpInside)
    }
    
    private let titleUILabel = UILabel().then {
        $0.text = "제목"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
        $0.font = UIFont(name: "Adelle-Bold", size: 20)
    }
    
    private let titleUITextView = UITextView().then {
        $0.font = UIFont(name: "JainiPurva-Regular", size: 40)
        $0.textColor = UIColor(rgb: 0x000000)
        $0.backgroundColor = UIColor(rgb: 0xFFFFFF)
        $0.layer.cornerRadius = 20
        $0.layer.shadowRadius = 6
        $0.layer.shadowOpacity = 0.2
        $0.layer.shadowOffset = CGSize.zero
    }
    
    private let contentUILabel = UILabel().then {
        $0.text = "내용"
        $0.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4)
        $0.font = UIFont(name: "Adelle-Bold", size: 20)
    }
    
    private let contentUITextView = UITextView().then {
        $0.font = UIFont(name: "JainiPurva-Regular", size: 15)
        $0.textColor = UIColor(rgb: 0x000000)
        $0.backgroundColor = UIColor(rgb: 0xFFFFFF)
        $0.layer.cornerRadius = 20
        $0.layer.shadowRadius = 6
        $0.layer.shadowOpacity = 0.2
        $0.layer.shadowOffset = CGSize.zero
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = backUIBarButtonItem
        backUIBarButtonItem.tintColor = UIColor(rgb: 0x000000)
    }
    
    override func addView() {
        view.addSubviews(
        completeUIButton,
        titleUILabel,
        titleUITextView,
        contentUILabel,
        contentUITextView
        )
    }
    
    @objc private func completedEdit(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func setLayout() {
        self.completeUIButton.snp.makeConstraints {
            $0.top.equalTo (self.view).offset(56)
            $0.leading.equalTo(self.view).inset(317)
            $0.height.equalTo(57)
        }
        self.titleUILabel.snp.makeConstraints {
            $0.top.equalTo(self.view).offset(144)
            $0.leading.equalTo(self.view).offset(39)
        }
        self.titleUITextView.snp.makeConstraints {
            $0.top.equalTo(self.view).offset(180)
            $0.leading.trailing.equalTo(self.view).inset(26.5)
            $0.height.equalTo(77)
        }
        self.contentUILabel.snp.makeConstraints {
            $0.top.equalTo(self.view).offset(309)
            $0.leading.equalTo(self.view).offset(39)
        }
        self.contentUITextView.snp.makeConstraints {
            $0.top.equalTo(self.view).offset(343)
            $0.leading.trailing.equalTo(self.view).inset(26.5)
            $0.height.equalTo(381)
        }
    }
}
