//
//  CenteringClipView.swift
//  CenteringScrollView
//
//  Created by Matt on 3/22/16.
//  Copyright © 2016 Matt Rajca. All rights reserved.
//

import AppKit

final class CenteringClipView: NSClipView {
	override func constrainBoundsRect(proposedBounds: NSRect) -> NSRect {
		var constrainedClipViewBounds = super.constrainBoundsRect(proposedBounds)

		guard let documentView = documentView as? NSView else {
			return constrainedClipViewBounds
		}

		let documentViewFrame = documentView.frame

		// If proposed clip view bounds width is greater than document view frame width, center it horizontally.
		if (documentViewFrame.width < proposedBounds.width) {
			constrainedClipViewBounds.origin.x = floor((proposedBounds.width - documentViewFrame.width) / -2.0)
		}

		// If proposed clip view bounds is hight is greater than document view frame height, center it vertically.
		if (documentViewFrame.height < proposedBounds.height) {
			constrainedClipViewBounds.origin.y = floor((proposedBounds.height - documentViewFrame.height) / -2.0)
		}

		return constrainedClipViewBounds
	}
}
