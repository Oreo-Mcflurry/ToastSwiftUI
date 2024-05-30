// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
import SwiftUI

public class Toast {
	public static let shared = Toast()
	private init() { }

	var windowScene: UIWindowScene?
	var toastWindow: UIWindow?
	public var configuration = ToastConfigutaion()

	public func setWindowScene(windowScene: UIWindowScene, toastWindow: inout UIWindow?) {
		self.windowScene = windowScene
		self.toastWindow = toastWindow
		self.toastWindow?.windowLevel = .statusBar
	}
}
