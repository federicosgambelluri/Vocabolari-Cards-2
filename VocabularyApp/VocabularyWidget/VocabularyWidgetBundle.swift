//
//  VocabularyWidgetBundle.swift
//  VocabularyWidget
//
//  Created by Federico Sgambelluri on 03/01/25.
//

import WidgetKit
import SwiftUI

@main
struct VocabularyWidgetBundle: WidgetBundle {
    var body: some Widget {
        VocabularyWidget()
        VocabularyWidgetControl()
        VocabularyWidgetLiveActivity()
    }
}
