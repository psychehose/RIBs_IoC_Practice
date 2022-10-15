//
//  LoggedOutRouter.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs

protocol LoggedOutInteractable: Interactable {
    var router: LoggedOutRouting? { get set }
    var listener: LoggedOutListener? { get set }
}

protocol LoggedOutViewControllable: ViewControllable {
}

final class LoggedOutRouter:
  ViewableRouter<LoggedOutInteractable,
  LoggedOutViewControllable>,
  LoggedOutRouting {

  override init(interactor: LoggedOutInteractable, viewController: LoggedOutViewControllable) {
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
}
