//
//  TestViewController.swift
//  Hiro42Kadai13
//
//  Created by 白石裕幸 on 2021/11/25.
//

import UIKit

class TestViewController: UIViewController {
    private var test:[(str: String, isCheck: Bool)] = [
        ("trueA", true),
        ("falseB", false),
        ("trueC", true),
        ("falseD", false)]

    override func viewDidLoad() {
        super.viewDidLoad()

        // クロジャー・省略可能みたい
        let testA = test.filter({ _, bbb -> Bool in
            return bbb == true
        })

        let testB = test.filter({_, bbb in bbb == true})
        print(testA[0].isCheck)
        print(testB[0].isCheck)

        // タプルでの条件分岐
        for count in 0...test.count {
            switch test[count] {
            case (let testA, let testB) where testB == true:
                print(testA)
            case (_, let testC):
                print(testC)
            }
        }
    }
}
