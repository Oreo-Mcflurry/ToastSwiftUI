//
//  File.swift
//  
//
//  Created by A_Mcflurry on 5/28/24.
//

import SwiftUI

struct ToastView<Content: View>: View {
	let toastView: Content

	init(@ViewBuilder toastView: () -> Content) {
		self.toastView = toastView()
	}

	var body: some View {
		toastView
	}
}
