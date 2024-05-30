//
//  ToastView.swift
//
//
//  Created by A_Mcflurry on 5/29/24.
//

import Foundation
import SwiftUI

protocol ToastView: View {
	var configuration: ToastConfigutaion { get }
}
