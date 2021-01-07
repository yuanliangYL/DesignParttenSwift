//
//  ATM.swift
//  DesignPattenSwift
//
//  Created by AlbertYuan on 2021/1/6.
//

import Foundation
final class ATM: Withdrawing {

    private var hundred: Withdrawing
    private var fifty: Withdrawing
    private var twenty: Withdrawing
    private var ten: Withdrawing


    //get 属性
    private var startPile: Withdrawing {
        return self.hundred
    }

    init(hundred: Withdrawing,
           fifty: Withdrawing,
          twenty: Withdrawing,
             ten: Withdrawing) {

        self.hundred = hundred
        self.fifty = fifty
        self.twenty = twenty
        self.ten = ten
    }


    func withdraw(amount: Int) -> Bool {
        return startPile.withdraw(amount: amount)
    }
    
}

