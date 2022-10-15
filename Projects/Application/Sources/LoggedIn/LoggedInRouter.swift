//
//  LoggedInRouter.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs

protocol LoggedInInteractable: Interactable {
  var router: LoggedInRouting? { get set }
  var listener: LoggedInListener? { get set }
}

protocol LoggedInViewControllable: ViewControllable {
}

final class LoggedInRouter:
  ViewableRouter<LoggedInInteractable,
  LoggedInViewControllable>,
  LoggedInRouting {

  override init(interactor: LoggedInInteractable, viewController: LoggedInViewControllable) {
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
}
