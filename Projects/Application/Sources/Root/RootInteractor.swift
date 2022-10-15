//
//  RootInteractor.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs
import RxSwift

protocol RootRouting: ViewableRouting {
}

protocol RootPresentable: Presentable {
  var listener: RootPresentableListener? { get set }
}

protocol RootListener: AnyObject {
}

final class RootInteractor:
  PresentableInteractor<RootPresentable>,
  RootInteractable,
  RootPresentableListener {

  weak var router: RootRouting?
  weak var listener: RootListener?

  override init(presenter: RootPresentable) {
    super.init(presenter: presenter)
    presenter.listener = self
  }

  override func didBecomeActive() {
    super.didBecomeActive()
  }

  override func willResignActive() {
    super.willResignActive()
  }
}
