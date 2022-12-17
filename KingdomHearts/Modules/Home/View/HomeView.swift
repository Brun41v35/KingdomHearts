import UIKit
import SnapKit

final class HomeView: UIView {
    
    // MARK: - Private Properties
    
    private lazy var bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.cornerRadiusTopView()
        return view
    }()
    
    // MARK: - Init
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
}

// MARK: - Extension

extension HomeView: ViewCodeProtocol {
    func setupHierarchy() {
        addSubview(bottomView)
    }
    
    func setupConstraints() {
        bottomView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(50)
            make.leading.bottom.trailing.equalToSuperview()
        }
    }
    
    func setupExtraConfiguration() {
        backgroundColor = UIColor(red: 0.88, green: 0.85, blue: 0.93, alpha: 1.00)
    }
}
