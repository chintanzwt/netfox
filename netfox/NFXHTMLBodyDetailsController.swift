//
//  NFXHTMLBodyDetailsController.swift
//  netfox
//
//  Created by Chintan Dave on 09/06/16.
//  Copyright © 2016 kasketis. All rights reserved.
//

import Foundation
import WebKit

class NFXHTMLBodyDetailsController: NFXGenericBodyDetailsController
{
    var webView = WKWebView()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.title = "HTML preview"
        
        self.webView.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))
        self.webView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        let HTML = self.selectedModel.getResponseBody() as String
        
        self.webView.loadHTMLString(HTML, baseURL: nil)
        
        self.view.addSubview(self.webView)
    }
}