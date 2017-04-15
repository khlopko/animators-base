//
//  DefaultControllerProtocols.swift
//

import UIKit

/// Protocol `AnimatableTransitioningController`.
public protocol AnimatableTransitioningController: class {
    var mainView: UIView { get }
}

/// Protocol `PanTransitioningController`
public protocol PanTransitioningController: class {
    var pan: UIPanGestureRecognizer? { get }
}
