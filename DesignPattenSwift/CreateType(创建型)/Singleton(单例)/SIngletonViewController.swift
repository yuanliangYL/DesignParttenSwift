//
//  SIngletonViewController.swift
//  DesignPattenSwift
//
//  Created by AlbertYuan on 2021/1/7.
//

import UIKit

class SIngletonViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mask1 = ElonMusk.shareMssk

        let mask2 = ElonMusk.shareMssk

        let mask3 = ElonMusk.shareMssk

        let mask4 = ElonMusk.shareMssk

        let mask5 = ElonMusk.shareMssk

        print("\(mask1),\(mask2),\(mask3),\(mask4),\(mask5)")

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
