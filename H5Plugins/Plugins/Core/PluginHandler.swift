//
//  PluginHandler.swift
//  H5Plugins
//
//  Created by 杜林顺 on 2021/10/26.
//

import UIKit
import WebKit

public class PluginHandler: NSObject {

    public let webView: WKWebView
    public let plugins: [PluginInterface]
    
    init(_ webView: WKWebView) {
        self.webView = webView
        self.plugins = [
            GetAccountPlugins()
        ]
    }
    
    func insertPlugins() {
        for plugin in self.plugins {
            self.webView.configuration.userContentController.add(self, name: plugin.name)
        }
    }
    
    func removePlugins() {
        for plugin in self.plugins {
            self.webView.configuration.userContentController.removeScriptMessageHandler(forName: plugin.name)
        }
    }
}

extension PluginHandler: WKScriptMessageHandler {
    
    public func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
    }
}
