//
//  LoggedInInteractor.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs
import RxSwift

protocol LoggedInRouting: ViewableRouting {
}

protocol LoggedInPresentable: Presentable {
  var listener: LoggedInPresentableListener? { get set }
}

protocol LoggedInListener: AnyObject {
}

final class LoggedInInteractor: PresentableInteractor<LoggedInPresentable>, LoggedInInteractable, LoggedInPresentableListener {

  weak var router: LoggedInRouting?
  weak var listener: LoggedInListener?

  override init(presenter: LoggedInPresentable) {
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
