//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by KIM HOSE on 2022/06/30.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureB",
    organizationName: "com.jstock",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureB",
        frameworkDependencies: [
            .project(
              target: "FeatureDependencies",
              path: .relativeToFeature("FeatureDependencies"))
        ],
        testDependencies: []
    ),
    schemes: []
)

