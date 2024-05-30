//
//  File.swift
//  
//
//  Created by A_Mcflurry on 5/28/24.
//

import SwiftUI

struct ToastCustomContentView<Content: View>: ToastView {
	let toastView: Content
	var configuration: ToastConfigutaion

	init(
		@ViewBuilder toastView: () -> Content,
		configuration: ToastConfigutaion
	) {
		self.toastView = toastView()
		self.configuration = configuration
	}

	var body: some View {
		toastView
			.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: configuration.alignemnt)
			.padding()
	}
}
