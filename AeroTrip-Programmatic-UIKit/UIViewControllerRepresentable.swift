//
//  UIViewControllerRepresentable.swift
//  AeroTrip-Programmatic-UIKit
//
//  Created by jatin foujdar on 27/08/25.
//

import SwiftUI
import UIKit

struct ViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    let builder: () -> ViewController

    init(_ builder: @escaping () -> ViewController) {
        self.builder = builder
    }

    func makeUIViewController(context: Context) -> ViewController {
        builder()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // No update logic needed for most cases
    }
}
