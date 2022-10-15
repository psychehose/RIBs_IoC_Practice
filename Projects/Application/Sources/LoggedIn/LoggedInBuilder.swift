//
//  LoggedInBuilder.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs

protocol LoggedInDependency: Dependency {
}

final class LoggedInComponent: Component<LoggedInDependency> {
}

// MARK: - Builder

protocol LoggedInBuildable: Buildable {
  func build(withListener listener: LoggedInListener) -> LoggedInRouting
}

final class LoggedInBuilder: Builder<LoggedInDependency>, LoggedInBuildable {

  override init(dependency: LoggedInDependency) {
    super.init(dependency: dependency)
  }

  func build(withListener listener: LoggedInListener) -> LoggedInRouting {
    let component = LoggedInComponent(dependency: dependency)
    let viewController = LoggedInViewController()
    let interactor = LoggedInInteractor(presenter: viewController)
    interactor.listener = listener
    return LoggedInRouter(interactor: interactor, viewController: viewController)
  }
}
