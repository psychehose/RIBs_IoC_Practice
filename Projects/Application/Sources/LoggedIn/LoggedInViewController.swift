//
//  LoggedInViewController.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol LoggedInPresentableListener: AnyObject {
}

final class LoggedInViewController: UIViewController, LoggedInPresentable, LoggedInViewControllable {

  weak var listener: LoggedInPresentableListener?
}
