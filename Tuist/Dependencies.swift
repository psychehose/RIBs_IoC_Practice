//
//  Dependencies.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription

let dependencies = Dependencies(
    carthage: [
        .github(path: "Alamofire/Alamofire", requirement: .branch("master")),
//        .github(path: "layoutBox/FlexLayout", requirement: .branch("master")),
//        .github(path: "layoutBox/PinLayout", requirement: .branch("master")),
//        .github(path: "SnapKit/SnapKit", requirement: .exact("5.0.0")),
        .github(path: "ReactiveX/RxSwift", requirement: .exact("6.5.0")),
        .github(path: "uber/RIBs", requirement: .revision("d30ffb7b5bc8012b8dcf7a0e79b875a699b525af")),
    ]
    ,
    swiftPackageManager: [
    ],
    platforms: [.iOS]
)
