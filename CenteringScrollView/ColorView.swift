//
//  ColorView.swift
//  CenteringScrollView
//
//  Created by Matt on 3/22/16.
//  Copyright © 2016 Matt Rajca. All rights reserved.
//

import AppKit

final class ColorView: NSView {
	override var wantsUpdateLayer: Bool {
		return true
	}

	override func updateLayer() {
		layer!.backgroundColor = NSColor(SRGBRed: 0.8, green: 0.3, blue: 0.2, alpha: 1).CGColor
	}

	override var intrinsicContentSize: NSSize {
		return NSMakeSize(100, 100)
	}
}
