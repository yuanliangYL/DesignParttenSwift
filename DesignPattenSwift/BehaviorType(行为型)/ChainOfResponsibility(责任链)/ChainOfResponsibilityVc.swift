//
//  ChainOfResponsibilityVc.swift
//  DesignPattenSwift
//
//  Created by AlbertYuan on 2021/1/6.
//

import UIKit


/**
 责任链是一种行为设计模式， 允许你将请求沿着处理者链进行发送， 直至其中一个处理者对其进行处理。
 该模式允许多个对象来对请求进行处理， 而无需让发送者类与具体接收者类相耦合。
 

 1. 责任链模式在面向对象程式设计里是一种软件设计模式；

 2.它包含了一些命令对象和一系列的处理对象；

 3.每一个处理对象决定它能处理哪些命令对象；

 4.它也知道如何将它不能处理的命令对象传递给该链中的下一个处理对象

**/

class ChainOfResponsibilityVc: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 创建一系列的钱堆，并将其链接起来：10<20<50<100
        let ten = MoneyPile(value: 10, quantity: 6, next: nil)
        let twenty = MoneyPile(value: 20, quantity: 2, next: ten)
        let fifty = MoneyPile(value: 50, quantity: 2, next: twenty)
        let hundred = MoneyPile(value: 100, quantity: 1, next: fifty)

        // 创建 ATM 实例
        let atm = ATM(hundred: hundred, fifty: fifty, twenty: twenty, ten: ten)
        print(atm.withdraw(amount: 310))  // Cannot because ATM has only 300

        print(atm.withdraw(amount: 100))// Can withdraw - 1x100

    }
    

  
}
