//
//  ToastConfigutaion.swift
//
//
//  Created by A_Mcflurry on 5/29/24.
//

import Foundation
import SwiftUI

public struct ToastConfigutaion {
	var duraration: Double
	var alignemnt: Alignment
	var animation: Animation
	var opacity: Double

	public init() {
		self.duraration = 1.0
		self.alignemnt = .bottom
		self.animation = .easeInOut
		self.opacity = 1.0
	}
}
