//
//  AppComponent.swift
//  RIBsIoC
//
//  Created by 김호세 on 2022/10/15.
//  Copyright © 2022 com.devhose. All rights reserved.
//


import RIBs

class AppComponent: Component<EmptyDependency>, RootDependency {

  init() {
    super.init(dependency: EmptyComponent())
  }
}
