//
//  HexagonLayout.swift
//  GratefulMoments
//
//  Created by Valerie Gadapati on 1/11/26.
//

import Foundation

enum HexagonLayout {
    case standard
    case large


    var size: CGFloat {
        switch self {
        case .standard:
            return 200.0
        case .large:
            return 350.0
        }
    }
}
