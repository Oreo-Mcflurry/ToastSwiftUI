// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
import SwiftUI

public class Toast {
	public let shared = Toast()
	private init() { }

	private var windowScene: UIWindowScene?
	private var toastWindow: UIWindow?

	public func setWindowScene(in windowScene: UIWindowScene, with window: UIWindow?) {
		self.windowScene = windowScene
		self.toastWindow = window
	}

	public func showToast<Content: View>(_ view: () -> Content) {
		guard let windowScene else {
			fatalError("You must register UIWindowScene with Toast.shared.setWindowScene(in:)")
		}

		guard toastWindow != nil else {
			fatalError("You must register UIWindow with Toast.shared.setWindowScene(in:)")
		}

		let showToastWindow = UIWindow(windowScene: windowScene)
		let toastViewController = UIHostingController(rootView: ToastView(toastView: view))
		showToastWindow.rootViewController = toastViewController
		self.toastWindow = showToastWindow
	}
}
