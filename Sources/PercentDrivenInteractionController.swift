//
//  PercentDrivenInteractionController.swift
//

import UIKit

open class PercentDrivenInteractionController: UIPercentDrivenInteractiveTransition, InteractionController {

    public final var driver: InteractionDriver? {
        didSet {
            driver?.interactionController = self
        }
    }
    open weak var delegate: InteractionControllerDelegate?

    open override func update(_ percentComplete: CGFloat) {
        super.update(percentComplete)
        delegate?.interactionController(self, didUpdate: percentComplete)
    }

    open override func finish() {
        super.finish()
        delegate?.interactionControllerDidFinish(self)
    }

    open override func cancel() {
        super.cancel()
        delegate?.interactionControllerDidCancel(self)
    }
}
