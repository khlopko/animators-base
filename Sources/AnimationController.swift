//
//  AnimationController.swift
//

import UIKit

/// Protocol `AnimationsController`.
public protocol AnimationController: UIViewControllerAnimatedTransitioning {
    func isValid(from fromVC: UIViewController, to toVC: UIViewController) -> Bool
}

/// Protocol `DrivingAnimationController`.
public protocol DrivingAnimationController: AnimationController {
    var driver: InteractionDriver { get }
}
