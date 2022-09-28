
import UIKit

extension UIColor {
    static var randomColor: UIColor{
       return UIColor(
           red: .random(in: 0...1),
           green: .random(in: 0...1),
           blue: .random(in: 0...1),
           alpha: 1.0
       )
    }
}
