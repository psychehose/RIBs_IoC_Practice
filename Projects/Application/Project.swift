//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "RIBsIoC",
    organizationName: "com.devhose",
    packages: [],
    targets: Project.appTargets(
        name: "RIBsIoC",
        appDependencies: [
            .project(
                target: "Features",
                path: .relativeToFeature("Features")
            )
        ],
        testDependencies: []
    ),
    schemes: [],
    additionalFiles: []
)
