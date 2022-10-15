//
//  Project.swift
//  FeaturesManifests
//
//  Created by 김호세 on 2022/10/13.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FeatureA",
    organizationName: "com.jstock",
    packages: [],
    targets: Project.staticLibrary(
        name: "FeatureA",
        frameworkDependencies: [
            .project(
              target: "FeatureDependencies",
              path: .relativeToFeature("FeatureDependencies"))
        ],
        testDependencies: []
    ),
    schemes: []
)
