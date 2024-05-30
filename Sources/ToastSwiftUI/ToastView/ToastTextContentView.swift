//
//  ToastTextContentView.swift
//
//
//  Created by A_Mcflurry on 5/30/24.
//

import SwiftUI

struct ToastTextContentView: ToastView {
	let text: String
	var configuration: ToastConfigutaion

	init(
		text: String,
		configuration: ToastConfigutaion = Toast.shared.configuration
	) {
		self.text = text
		self.configuration = configuration
	}

	var body: some View {
		Text(text)
			.foregroundColor(configuration.textColor)
			.padding(configuration.backgroundPadding)
			.background(configuration.backgroundColor)
			.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: configuration.alignemnt)
			.padding()
	}
}

