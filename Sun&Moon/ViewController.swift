//
//  ViewController.swift
//  Sun&Moon
//
//  Created by Юрий Яковлев on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {
    var isSun = true
    var count = 0

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var skyImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        isSun.toggle()
        count += 1
        countLabel.text = "Значение счётчика: \(count)"
        toggleIcon()
    }
    
    func toggleIcon() {
        if isSun {
            skyImageView.image = UIImage(systemName: "sun.max")
            skyImageView.tintColor = .systemYellow
        }
        else {
            skyImageView.image = UIImage(systemName: "moon")
            skyImageView.tintColor = .gray
        }
    }
    
}

