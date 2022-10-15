//
//  LoggedOutBuilder.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs

protocol LoggedOutDependency: Dependency {
}

final class LoggedOutComponent: Component<LoggedOutDependency> {
}

// MARK: - Builder

protocol LoggedOutBuildable: Buildable {
  func build(withListener listener: LoggedOutListener) -> LoggedOutRouting
}

final class LoggedOutBuilder: Builder<LoggedOutDependency>, LoggedOutBuildable {

  override init(dependency: LoggedOutDependency) {
    super.init(dependency: dependency)
  }

  func build(withListener listener: LoggedOutListener) -> LoggedOutRouting {
    let component = LoggedOutComponent(dependency: dependency)
    let viewController = LoggedOutViewController()
    let interactor = LoggedOutInteractor(presenter: viewController)
    interactor.listener = listener
    return LoggedOutRouter(interactor: interactor, viewController: viewController)
  }
}
