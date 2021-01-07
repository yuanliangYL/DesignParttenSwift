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
        //swift 4/5
        print(Unmanaged.passUnretained(mask1).toOpaque())



        let mask2 = ElonMusk.shareMssk
        print(Unmanaged.passUnretained(mask2).toOpaque())


        let mask3 = ElonMusk.shareMssk
        print(Unmanaged.passUnretained(mask3).toOpaque())


        let mask4 = ElonMusk.shareMssk
        print(Unmanaged.passUnretained(mask4).toOpaque())


        let mask5 = ElonMusk.shareMssk
        print(Unmanaged.passUnretained(mask5).toOpaque())


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
