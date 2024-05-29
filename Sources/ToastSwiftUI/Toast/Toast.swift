// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
import SwiftUI

public class Toast {
	public static let shared = Toast()
	private init() { }

	private var windowScene: UIWindowScene?
	private var toastWindow: UIWindow?
//	public var configuration =

	public func setWindowScene(windowScene: UIWindowScene, toastWindow: inout UIWindow?) {
		self.windowScene = windowScene
		self.toastWindow = toastWindow
	}

	public func showToast<Content: View>(_ view: () -> Content) {
		guard let windowScene else {
			fatalError("You must register UIWindowScene with Toast.shared.setWindowScene()")
		}

		let showToastWindow = UIWindow(windowScene: windowScene)
		let toastViewController = UIHostingController(rootView: ToastCustomContentView(toastView: view))
		showToastWindow.rootViewController = toastViewController
		toastViewController.view.backgroundColor = .clear
		showToastWindow.isHidden = false
		self.toastWindow = showToastWindow
	}
}