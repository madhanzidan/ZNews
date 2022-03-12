//
//  NewsDetailView.swift
//  ZNews
//
//  Created by Zidan Ramadhan on 12/03/22.
//

import SwiftUI

struct NewsDetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}


