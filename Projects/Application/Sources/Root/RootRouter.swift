//
//  RootRouter.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs

protocol RootInteractable: Interactable {
  var router: RootRouting? { get set }
  var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable { }

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {

  override init(interactor: RootInteractable, viewController: RootViewControllable) {
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
}
