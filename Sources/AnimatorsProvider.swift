//
//  AnimatorsProvider.swift
//

import UIKit

open class AnimatorsProvider {

    open var isInteractive = false

    private let controllers: [AnimationController] = []
    private let interactionController = PercentDrivenInteractionController()

    public init() {
    }

    open func animationController(from fromVC: UIViewController, to toVC: UIViewController) -> AnimationController? {
        return controllers.filter { $0.isValid(from: fromVC, to: toVC) }.first
    }

    open func interactionController(for animationController: UIViewControllerAnimatedTransitioning) -> InteractionController? {
        guard isInteractive, let drivingController = animationController as? DrivingAnimationController else {
            return nil
        }
        interactionController.driver = drivingController.driver
        return interactionController
    }
}
