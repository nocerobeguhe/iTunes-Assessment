//
//  SongViewModel.swift
//  Nocero-Assessment
//
//  Created by Nocero Beguhe on 07/14/21.
//  Copyright © 2021 Nocero Beguhe. All rights reserved.
//

import Foundation

struct SongViewModel {
    let title: String
    let runtime: String
}

extension SongViewModel {
    init(song: Song) {
        self.title = song.censoredName
        
        // Track time in milliseconds
        let timeInSeconds = song.trackTime / 1000
        let minutes = timeInSeconds / 60 % 60
        let seconds = timeInSeconds % 60
        
        self.runtime = "\(minutes): \(seconds)"
    }
}
