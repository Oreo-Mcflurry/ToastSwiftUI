//
//  ToastProvider.swift
//
//
//  Created by A_Mcflurry on 5/29/24.
//

import SwiftUI

public class ToastProvider {

	private let toastShared: Toast

	init() {
		self.toastShared = Toast.shared
	}

	private func makeToast(_ toastViewController: UIViewController) {
		guard let windowScene = toastShared.windowScene else {
			fatalError("You must register UIWindowScene with Toast.shared.setWindowScene()")
		}

		let showToastWindow = UIWindow(windowScene: windowScene)
		showToastWindow.rootViewController = toastViewController
		toastViewController.view.backgroundColor = .clear
		showToastWindow.isHidden = false
		toastShared.toastWindow = showToastWindow
	}

	func showToast<Content: View>(_ view: () -> Content) {
		let toastVC = UIHostingController(rootView: ToastCustomContentView(toastView: view))
		self.makeToast(toastVC)
	}
}
