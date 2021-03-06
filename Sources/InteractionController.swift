//
//  InteractionController.swift
//

import UIKit

/// Protocol `InteractionController`.
/// Use this protocol to implement your own interaction controller for transition.
/// - By default, `PercentDrivenInteractionController`, that inherits `UIPercentDrivenInteractiveTransition`,
///   adopts this protocol. For most cases this class is enough.
public protocol InteractionController: UIViewControllerInteractiveTransitioning {

    weak var delegate: InteractionControllerDelegate? { get set }

    var driver: InteractionDriver? { get set }
    var percentComplete: CGFloat { get }

    func update(_ percentComplete: CGFloat)
    func cancel()
    func finish()
}

/// Protocol `InteractionDriver`.
/// Use this class to define custom interactions based on gestures.
public protocol InteractionDriver: class {
    weak var interactionController: InteractionController? { get set }
}

/// Protocol `InteractionControllerDelegate`.
public protocol InteractionControllerDelegate: class {

    /// Delegate method, called each time `update()` method of controller receives new value of `percentComplete`.
    func interactionController(_ controller: InteractionController, didUpdate percentComplete: CGFloat)

    /// Delegate method, called after finishing interaction.
    func interactionControllerDidFinish(_ controller: InteractionController)

    /// Delegate method, called after cancelling interaction.
    func interactionControllerDidCancel(_ controller: InteractionController)
}

public extension InteractionControllerDelegate {

    func interactionController(_ controller: InteractionController, didUpdate percentComplete: CGFloat) {
    }

    func interactionControllerDidFinish(_ controller: InteractionController) {
    }

    func interactionControllerDidCancel(_ controller: InteractionController) {
    }
}
