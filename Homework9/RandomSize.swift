
import UIKit

extension CGFloat {
    static func getRandomSize(maxValue: CGFloat) -> CGFloat {
        .random(in: 1...maxValue)
    }
    
    static func getRandomCoordinates(maxX: CGFloat, maxY: CGFloat) -> (CGFloat, CGFloat) {
        (.random(in: 0...maxY),
         .random(in: 0...maxX))
    }
}
