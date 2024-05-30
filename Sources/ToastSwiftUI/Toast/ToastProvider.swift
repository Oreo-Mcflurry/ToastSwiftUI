//
//  ToastProvider.swift
//
//
//  Created by A_Mcflurry on 5/29/24.
//

import SwiftUI

public class ToastProvider {

	private let toastShared: Toast

	public init() {
		self.toastShared = Toast.shared
	}

	private func makeToast(_ toastViewController: UIViewController, with configuration: ToastConfigutaion) {
		guard let windowScene = toastShared.windowScene else {
			fatalError("You must register UIWindowScene with Toast.shared.setWindowScene()")
		}

		let showToastWindow = UIWindow(windowScene: windowScene)
		showToastWindow.rootViewController = toastViewController
		toastViewController.view.backgroundColor = .clear
		toastShared.toastWindow = showToastWindow
		showToastWindow.isHidden = false

		DispatchQueue.main.asyncAfter(deadline: .now() + configuration.duraration) {
			showToastWindow.isHidden = true
		}
	}

	public func showToast<Content: View>(
		_ view: () -> Content,
		configuration: ToastConfigutaion = Toast.shared.configuration
	) {
		let toastVC = UIHostingController(rootView: ToastCustomContentView(toastView: view, configuration: configuration))
		self.makeToast(toastVC, with: configuration)
	}
}
