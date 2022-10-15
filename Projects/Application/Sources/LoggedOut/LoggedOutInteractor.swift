//
//  LoggedOutInteractor.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs
import RxSwift

protocol LoggedOutRouting: ViewableRouting {
}

protocol LoggedOutPresentable: Presentable {
  var listener: LoggedOutPresentableListener? { get set }

}

protocol LoggedOutListener: AnyObject {

}

final class LoggedOutInteractor: PresentableInteractor<LoggedOutPresentable>, LoggedOutInteractable, LoggedOutPresentableListener {

  weak var router: LoggedOutRouting?
  weak var listener: LoggedOutListener?

  override init(presenter: LoggedOutPresentable) {
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
