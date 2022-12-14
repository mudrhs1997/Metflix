
import Foundation
import UIKit

extension UIView {
    func gradient() {
        let gradientLayer: CAGradientLayer!
        gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.frame = bounds
        self.layer.addSublayer(gradientLayer)
    }
}
