//
//  ViewController.swift
//  Hiro42Kadai13
//
//  Created by 白石裕幸 on 2021/11/18.
//

import UIKit

class ViewController: UIViewController {
    private var fruitsInStock = [
        ("りんご", false),
        ("みかん", true),
        ("バナナ", false),
        ("パイナップル", true)
    ]
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsInStock.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                as? FruitCell else { fatalError() }
        cell.setName(name: fruitsInStock[indexPath.row].0)
        if fruitsInStock[indexPath.row].1 == true {
            cell.setIscheckImage(image: UIImage(named: "checkMark"))
        }
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
     cell.selectionStyle = .none
    }
}
class FruitCell: UITableViewCell {
    @IBOutlet private weak var checkImgaeView: UIImageView!
    @IBOutlet private weak var fruitsNameLabel: UILabel!
    func setName(name: String) {
        fruitsNameLabel.text = name
    }
    func setIscheckImage(image: UIImage?) {
        checkImgaeView.image = image
    }
}
