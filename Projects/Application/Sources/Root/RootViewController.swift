//
//  RootViewController.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol RootPresentableListener: AnyObject { }

final class RootViewController: UIViewController, RootPresentable, RootViewControllable {

    weak var listener: RootPresentableListener?
}
