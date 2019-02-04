import Foundation
import PureLayout

extension UIView {
  @discardableResult
  func autoPinEdgesToSuperView(_ edges: ALEdge..., withOffset: Int = 0, relation: NSLayoutConstraint.Relation = .equal) -> [NSLayoutConstraint] {
    var constraints = [NSLayoutConstraint]()
    for edge in edges {
      constraints.append(autoPinEdge(toSuperviewEdge: edge, withInset: CGFloat(withOffset), relation: relation))
    }
    return constraints
  }
}
