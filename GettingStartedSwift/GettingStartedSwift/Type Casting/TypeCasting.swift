//
//  BasicTypeCasting.swift
//  GettingStartedSwift
//
//  Created by Alan O'Connor on 08/02/2018.
//  Copyright © 2018 CodeBiscuits. All rights reserved.
//

import Foundation

class BasicTypeCasting {
    static let library = [
        Movie(name: "There Will be Blood", director: "Paul Thomas Anderson"),
        Song(name: "New York I Love You, But You're Bringing Me Down", artist: "LCD Soundsystem"),
        Movie(name: "The Shining", director: "Stanley Kubrick"),
        Song(name: "Burn The Witch", artist: "Queens Of The Stone Age"),
        Song(name: "Hurt", artist: "Nine Inch Nails")
    ]
    
    static func checkType() {
        var movieCount = 0
        var songCount = 0
        for item in library {
            if item is Movie {
                movieCount += 1
            } else if item is Song {
                songCount += 1
            }
        }
        print("MediaLibrary contains \(movieCount) movies, and \(songCount) songs")
    }
    
    static func libraryContents() {
        for item in library {
            if let movie = item as? Movie {
                print("Movie: \(movie.name), dir: \(movie.director)")
            } else if let song = item as? Song {
                print("Song: \(song.name), artist: \(song.artist)")
            }
        }
    }
}
