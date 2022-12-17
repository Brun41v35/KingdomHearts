import UIKit

extension UIView {
    func cornerRadiusTopView() {
        backgroundColor = .white
        clipsToBounds = true
        layer.cornerRadius = 30
        layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
}
