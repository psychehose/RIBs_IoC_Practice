//
//  RootBuilder.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs

protocol RootDependency: Dependency { }

final class RootComponent: Component<RootDependency> { }

// MARK: - Builder

protocol RootBuildable: Buildable {
  func build() -> LaunchRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {

  override init(dependency: RootDependency) {
    super.init(dependency: dependency)
  }

  func build() -> LaunchRouting {

    _ = RootComponent(dependency: dependency)
    let viewController = RootViewController()
    let interactor = RootInteractor(presenter: viewController)

    return RootRouter(
      interactor: interactor,
      viewController: viewController
    )
  }
}
