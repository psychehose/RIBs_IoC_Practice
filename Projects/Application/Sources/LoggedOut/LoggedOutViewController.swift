//
//  LoggedOutViewController.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol LoggedOutPresentableListener: AnyObject {
}

final class LoggedOutViewController: UIViewController, LoggedOutPresentable, LoggedOutViewControllable {

  weak var listener: LoggedOutPresentableListener?
}
