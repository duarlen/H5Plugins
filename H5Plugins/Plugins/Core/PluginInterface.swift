//
//  PluginInterface.swift
//  H5Plugins
//
//  Created by 杜林顺 on 2021/10/26.
//

import UIKit
import WebKit

public protocol PluginInterface {

    var name: String { get }
    
    func didReceive(_ webView: WKWebView, message: WKScriptMessage)
    
}
