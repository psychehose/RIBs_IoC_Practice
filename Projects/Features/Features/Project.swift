//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Features",
    organizationName: "com.devhose",
    packages: [],
    targets: Project.dynamicFramework(
        name: "Features",
        frameworkDependencies: [
            .project(
              target: "FeatureA",
              path: .relativeToFeature("Features/FeatureA")
            ),
            .project(
              target: "FeatureB",
              path: .relativeToFeature("Features/FeatureB")
            )
        ],
        testDependencies: []
    ),
    schemes: []
)
