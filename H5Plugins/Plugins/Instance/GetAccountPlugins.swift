//
//  GetAccountPlugins.swift
//  H5Plugins
//
//  Created by 杜林顺 on 2021/10/26.
//

import UIKit
import WebKit

class GetAccountPlugins: PluginInterface {
    
    let name: String = "GetAccount"
    
    func didReceive(_ webView: WKWebView, message: WKScriptMessage) {
        webView.evaluateJavaScript("", completionHandler: nil);
    }
}
