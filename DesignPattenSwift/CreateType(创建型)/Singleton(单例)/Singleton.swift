//
//  Singleton.swift
//  DesignPattenSwift
//
//  Created by AlbertYuan on 2021/1/7.
//

import Foundation

final class ElonMusk{

    //create a static instance
    static let shareMssk = ElonMusk()

    //init method private  // 私有化构造方法，不允许外界创建实例
    private init(){
        // Private initialization to ensure just one instance is created.
        // 进行初始化工作
    }

}
