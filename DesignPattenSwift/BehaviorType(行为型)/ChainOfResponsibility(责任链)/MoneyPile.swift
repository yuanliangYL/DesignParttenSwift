//
//  MoneyPile.swift
//  DesignPattenSwift
//
//  Created by AlbertYuan on 2021/1/6.
//

import Foundation


final class MoneyPile: Withdrawing{

    let value: Int

    var quantity :Int //数量

    var next: Withdrawing? //任何遵循了Withdrawing协议的对象


    //初始化方法
    init(value: Int, quantity: Int, next: Withdrawing?) {
        self.value = value
        self.quantity = quantity
        self.next = next
    }


    //协议实现
    func withdraw(amount: Int) -> Bool {

        var amount = amount

        //内嵌函数
        func canTakeSomeBill(want: Int) -> Bool {
            return (want / self.value) > 0
        }

        var quantity = self.quantity

        while canTakeSomeBill(want: amount) {

            if quantity == 0 {
                break
            }

            amount -= self.value
            quantity -= 1
        }

        guard amount > 0 else {
            return true
        }

        if let next = self.next {
            return next.withdraw(amount: amount)
        }

        return false
    }

}
