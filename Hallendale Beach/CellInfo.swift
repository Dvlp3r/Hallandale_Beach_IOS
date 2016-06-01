//
//  CellInfo.swift
//  Hallendale Beach
//
//  Created by Greg Salvesen on 5/31/16.
//  Copyright © 2016 Soccer5. All rights reserved.
//

import Foundation

class CellInfo {
    let iconText: String!
    let titleText: String!
    let descriptionText: String!
    let webURL: String!
    
    init(initIconText: String, initTitleText: String, initDescriptionText: String, initWebURL: String) {
        iconText = initIconText
        titleText = initTitleText
        descriptionText = initDescriptionText
        webURL = initWebURL
    }
}