//
//  DataManager.swift
//  AnimationApp
//
//  Created by Илья Нечаев on 22.09.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let animations: [Animation] = [
        Animation.init(
            preset: "slideLeft",
            curve: "easeInCirc",
            force: 1.7,
            duration: 1.6,
            delay: 0.2
        ), Animation.init(
            preset: "slideRight",
            curve: "easeInCirc",
            force: 1.7,
            duration: 1.6,
            delay: 0.2
        ), Animation.init(
            preset: "slideDown",
            curve: "easeInCirc",
            force: 1.7,
            duration: 1.6,
            delay: 0.2
        )
    ]
    
    private init() {}
}
