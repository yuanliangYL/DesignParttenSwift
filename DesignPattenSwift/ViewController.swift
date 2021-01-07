//
//  ViewController.swift
//  DesignPattenSwift
//
//  Created by AlbertYuan on 2021/1/6.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet var tableview: UITableView!

    lazy var allPattrnArray :[[String : Any]] = {

        let  dataArray = [["section":"行为型模式","info":["🐝责任链（Chain Of Responsibility）",
                                                               "👫命令（Command）",
                                                               "🎶解释器（Interpreter）",
                                                               "🍫迭代器（Iterator）",
                                                               "💐 中介者（Mediator）",
                                                               "💾 备忘录（Memento）",
                                                               "👓 观察者（Observer）",
                                                               "🐉 状态（State）",
                                                               "💡 策略（Strategy）",
                                                               "🏃 访问者（Visitor）",
                        ]],

                          ["section":"创建型模式","info":["🌰 抽象工厂（Abstract Factory）",
                                                               "👷 生成器（Builder）",
                                                               "🏭 工厂方法（Factory Method）",
                                                               "🃏 原型（Prototype）",
                                                               "💍 单例（Singleton）",
                          ]],

                          ["section":"结构型模式","info":["🔌 适配器（Adapter）",
                                                               "🌉 桥接（Bridge）",
                                                               "🌿 组合（Composite）",
                                                               "🍧 修饰（Decorator）",
                                                               "🎁 外观（Facade）",
                                                               "🍃 享元（Flyweight）",
                                                               "☔ 保护代理模式（Protection Proxy）",
                                                               "🍬 虚拟代理（Virtual Proxy）"
                          ]]]
        
        return dataArray

    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "reuse")

    }


}


extension ViewController{

    override func numberOfSections(in tableView: UITableView) -> Int {
        return allPattrnArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        let rowArr: [String] = allPattrnArray[section]["info"] as! [String]

        return rowArr.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let  cell = tableView.dequeueReusableCell(withIdentifier: "reuse", for: indexPath) as UITableViewCell
        cell.selectionStyle = .none

        let rowArr: [String] = allPattrnArray[indexPath.section]["info"] as! [String]
        cell.textLabel?.text = rowArr[indexPath.row]

        return cell

    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = allPattrnArray[section]["section"] as! String
        return title
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }

}


extension ViewController{

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            switch (indexPath.section,indexPath.row) {

            //section one
            case (0,0):

                let destinationVc = ChainOfResponsibilityVc()
                let rowArr: [String] = allPattrnArray[indexPath.section]["info"] as! [String]
                destinationVc.navigationItem.title = rowArr[indexPath.row]
                self.navigationController?.pushViewController(destinationVc, animated: true)

                break






                //section tow
            case(1,4):

                let destinationVc = SIngletonViewController()
                let rowArr: [String] = allPattrnArray[indexPath.section]["info"] as! [String]
                destinationVc.navigationItem.title = rowArr[indexPath.row]
                self.navigationController?.pushViewController(destinationVc, animated: true)

                break




                //section three


            default:
                break
            }


    }
}
