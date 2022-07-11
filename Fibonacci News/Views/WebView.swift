import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    @Binding var url: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrlObject = URL(string: url) {
            let safeUrlRequest = URLRequest(url: safeUrlObject)
            uiView.load(safeUrlRequest)
        }
    }
}
