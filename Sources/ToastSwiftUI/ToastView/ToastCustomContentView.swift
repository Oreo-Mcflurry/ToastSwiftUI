//
//  File.swift
//  
//
//  Created by A_Mcflurry on 5/28/24.
//

import SwiftUI

struct ToastCustomContentView<Content: View>: ToastView {
	var configuration: ToastConfigutaion
	let toastView: Content

	init(
		@ViewBuilder toastView: () -> Content,
		configuration: ToastConfigutaion = Toast.shared.configuration
	) {
		self.toastView = toastView()
		self.configuration = configuration
	}

	var body: some View {
		toastView
			.padding()
	}
}
