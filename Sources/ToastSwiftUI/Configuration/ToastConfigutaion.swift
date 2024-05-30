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
	var backgroundPadding: Double
	var textColor: Color
	var backgroundColor: Color

	public init() {
		self.duraration = 1.0
		self.alignemnt = .bottom
		self.animation = .easeInOut
		self.opacity = 0.8
		self.backgroundPadding = 12
		self.textColor = .white
		self.backgroundColor = .black
	}
}
